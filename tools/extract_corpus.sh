#!/usr/bin/env bash
# Extract chapter-level text from the local corpus into the repo:
#   docs/<release>/text/<document>/NN-<chapter>-p<from>-<to>.md
# plus docs/<release>/text/<document>/00-index.md per document.
#
# Usage (Git Bash):  bash tools/extract_corpus.sh
#   SNOW_SRC        corpus folder (default: ~/SNOW Doc)
#   MINPAGES        a chapter absorbs following TOC entries until it has at
#                   least this many pages (default 10)
#   MAXPAGES        longer chapters are split into parts (default 150)
#
# Rules: PDFs are read via the sidecar .txt if one exists next to the PDF,
# otherwise pdftotext (cached in ~/repos/_corpus-text-cache). Chapters come
# from each document's own table of contents (top-level entries with page
# numbers). Generic entries (Explore, Configure, Use, Reference, ...) are
# folded into the chapter they belong to. Every page boundary is marked with
# <!-- page N --> so answers can cite the PDF page. Re-runnable: output for a
# document is rebuilt from scratch each time.
set -euo pipefail

SRC="${SNOW_SRC:-$HOME/SNOW Doc}"
REPO_DIR="$(cd "$(dirname "$0")/.." && pwd)"
CACHE="${SNOW_TEXT_CACHE:-$HOME/repos/_corpus-text-cache}"
MINPAGES="${MINPAGES:-10}"
MAXPAGES="${MAXPAGES:-150}"
mkdir -p "$CACHE"

release_of() {
  case "$1" in
    servicenow-zurich-*|SPM\ -\ *Zurich*) echo zurich ;;
    servicenow-australia-*) echo australia ;;
    servicenow-yokohama-*) echo yokohama ;;
    *) echo general ;;
  esac
}

slug_of() {
  local b="${1%.*}"
  case "$b" in
    "SPM - Demand Management - Process Workshop Presentation - Zurich") echo spm-demand-management-workshop; return ;;
    "Stand up and evolve a ServiceNow AI-Center of Excellence and Innovation") echo ai-coe-whitepaper; return ;;
    "ServiceNow-Data-Model-v3.4") echo servicenow-data-model-v3.4; return ;;
  esac
  b="${b#servicenow-zurich-}"; b="${b#servicenow-australia-}"; b="${b#servicenow-yokohama-}"; b="${b%-enus}"
  printf '%s' "$b" | tr 'A-Z' 'a-z' | sed -E 's/[^a-z0-9.]+/-/g; s/^-+|-+$//g'
}

# ---------- chapter splitter (awk) ----------
split_pages() {
  # $1 page-delimited text, $2 doc title, $3 source file name, $4 release, $5 outdir
  local txt="$1" title="$2" src="$3" rel="$4" out="$5"
  rm -rf "$out"; mkdir -p "$out"
  gawk -v DOCTITLE="$title" -v SRC="$src" -v REL="$rel" -v OUT="$out" \
       -v MINP="$MINPAGES" -v MAXP="$MAXPAGES" '
  BEGIN { RS="\f"; ORS="" }
  { gsub(/\r/, ""); P[NR] = $0 }
  END {
    n = NR
    # ---- parse table of contents from the first pages ----
    m = 0
    for (pg = 1; pg <= (n < 80 ? n : 80); pg++) {
      cnt = split(P[pg], L, "\n")
      for (k = 1; k <= cnt; k++) {
        line = L[k]; sub(/^ +/, "", line)
        if (line !~ /^[A-Za-z0-9]/) continue
        if (match(line, /\.{5,} *[0-9]+ *$/) == 0) continue
        t = substr(line, 1, RSTART - 1); sub(/[ .]+$/, "", t)
        pnum = substr(line, RSTART); gsub(/[^0-9]/, "", pnum); pnum += 0
        if (t == "" || pnum < 1 || pnum > n) continue
        if (m > 0 && pnum < TP[m]) continue
        m++; TT[m] = t; TP[m] = pnum; TF[m] = pg
      }
    }
    # keep only entries from the contiguous TOC pages (a gap of >2 pages ends the TOC);
    # anything found later is body text with dot leaders
    if (m > 0) {
      tocEnd = TF[1]; mm = 0
      for (i = 1; i <= m; i++) {
        if (TF[i] > tocEnd + 2) break
        if (TF[i] > tocEnd) tocEnd = TF[i]
        mm++; TT[mm] = TT[i]; TP[mm] = TP[i]
      }
      m = mm
    }
    if (m < 2) { m = 1; TT[1] = "Full text"; TP[1] = 1 }

    # ---- group entries into chapters ----
    # generic = sub-headings that belong to the preceding chapter (also numbered sub-sections like "3.2 Processes")
    generic = "^(Explore|Exploring|Configure|Configuring|Use|Using|Integrate|Integrating|Reference|References|Administer|Administering|Analyze|Manage|Managing|Monitor|Monitoring|Install|Activate|Set up|Setting up|Get started|Getting started|Customize|Operate|Optimize|Overview|Feedback|Dashboards|Mobile experience|Analytics and reporting|Use agentic|Use generative|AI agents|Domain separation|Components installed|Quick start tests|Table of Figures|Table of Tables|[0-9]+\\.[0-9]+[. ]|Table [0-9]+:|Figure [0-9]+:)"
    c = 0; i = 1
    while (i <= m) {
      c++; CS[c] = i; from = TP[i]; j = i + 1
      while (j <= m && (TT[j] ~ generic || (TP[j] - from) < MINP)) j++
      CE[c] = j - 1; CFROM[c] = from; CTO[c] = (j <= m) ? TP[j] - 1 : n
      if (CTO[c] < CFROM[c]) CTO[c] = CFROM[c]
      i = j
    }

    # ---- write files ----
    idx = OUT "/00-index.md"
    printf("# %s\n\nSource: %s | Release: %s | Pages: %d\n\n| File | Chapter | Pages |\n|---|---|---|\n", DOCTITLE, SRC, REL, n) > idx
    for (k = 1; k <= c; k++) {
      # chapter title: non-generic headings, max 3
      ct = ""; nt = 0
      for (i = CS[k]; i <= CE[k]; i++) if (TT[i] !~ generic) { nt++; if (nt <= 3) ct = ct (ct == "" ? "" : " / ") TT[i] }
      if (ct == "") ct = TT[CS[k]]
      if (nt > 3) ct = ct " +" (nt - 3) " more"
      secs = ""
      for (i = CS[k]; i <= CE[k]; i++) secs = secs (secs == "" ? "" : "; ") TT[i] " (p" TP[i] ")"
      slug = tolower(TT[CS[k]]); gsub(/[^a-z0-9]+/, "-", slug); gsub(/^-+|-+$/, "", slug); slug = substr(slug, 1, 60); gsub(/-+$/, "", slug)
      total = CTO[k] - CFROM[k] + 1
      parts = int((total + MAXP - 1) / MAXP); if (parts < 1) parts = 1
      for (p = 1; p <= parts; p++) {
        pf = CFROM[k] + (p - 1) * MAXP
        pt = pf + MAXP - 1; if (pt > CTO[k]) pt = CTO[k]
        fname = sprintf("%02d-%s%s-p%d-%d.md", k, slug, (parts > 1 ? sprintf("-part%dof%d", p, parts) : ""), pf, pt)
        f = OUT "/" fname
        printf("# %s — %s\n\n", DOCTITLE, ct) > f
        printf("Source: %s | Release: %s | Pages: %d–%d of %d%s\n\n", SRC, REL, pf, pt, n, (parts > 1 ? sprintf(" | Part %d of %d", p, parts) : "")) > f
        printf("Sections: %s\n\n---\n\n", secs) > f
        for (pg = pf; pg <= pt; pg++) { printf("<!-- page %d -->\n%s\n", pg, P[pg]) > f }
        close(f)
        printf("| %s | %s%s | %d–%d |\n", fname, ct, (parts > 1 ? sprintf(" (part %d/%d)", p, parts) : ""), pf, pt) > idx
      }
    }
    close(idx)
    printf("%d pages, %d TOC entries, %d chapters\n", n, m, c) > "/dev/stderr"
  }' "$txt"
}

doc_title() {
  # lines before "Last updated" on page 1, else first non-empty line
  gawk 'BEGIN{RS="\f"} NR==1 { gsub(/\r/,""); n=split($0,L,"\n"); t="";
        for(i=1;i<=n;i++){ if(L[i] ~ /^Last updated/) break; if(L[i] ~ /[A-Za-z]/){ t = t (t==""?"":" ") L[i]; if(i>=4 && $0 !~ /Last updated/) break } }
        gsub(/^ +| +$/,"",t); print substr(t,1,120); exit }' "$1"
}

# ---------- main ----------
shopt -s nullglob
for f in "$SRC"/*; do
  name="$(basename "$f")"; ext="${name##*.}"; ext="${ext,,}"
  rel="$(release_of "$name")"; slug="$(slug_of "$name")"
  out="$REPO_DIR/docs/$rel/text/$slug"
  case "$ext" in
    pdf)
      side="${f%.*}.txt"
      if [ -f "$side" ]; then txt="$side"
      else
        txt="$CACHE/$slug.txt"
        if [ ! -s "$txt" ] || [ "$f" -nt "$txt" ]; then
          pdftotext -layout "$f" "$txt"
        fi
      fi
      title="$(doc_title "$txt")"; [ -z "$title" ] && title="${name%.*}"
      printf '%-70s -> %s/%s : ' "$name" "$rel" "$slug"
      split_pages "$txt" "$title" "$name" "$rel" "$out" ;;
    pptx)
      tmp="$(mktemp -d)"; unzip -q -o "$f" 'ppt/slides/slide*.xml' 'ppt/notesSlides/*.xml' -d "$tmp" 2>/dev/null || true
      rm -rf "$out"; mkdir -p "$out"; md="$out/01-slides.md"
      { printf '# %s\n\nSource: %s | Release: %s | Slides: %s\n\n---\n\n' "${name%.*}" "$name" "$rel" "$(ls "$tmp"/ppt/slides/slide*.xml 2>/dev/null | wc -l)"
        for s in $(ls "$tmp"/ppt/slides/slide*.xml | sort -V); do
          num="$(basename "$s" .xml)"; num="${num#slide}"
          printf '## Slide %s\n\n' "$num"
          sed -e 's/<a:p>/\n/g; s/<a:t>/ /g' "$s" | sed -e 's/<[^>]*>//g' | sed -E 's/^ +//; s/&amp;/\&/g; s/&lt;/</g; s/&gt;/>/g' | { grep -v '^\s*$' || true; }
          notes="$tmp/ppt/notesSlides/notesSlide$num.xml"
          if [ -f "$notes" ]; then t="$(sed -e 's/<a:p>/\n/g; s/<a:t>/ /g' "$notes" | sed -e 's/<[^>]*>//g' | { grep -v '^\s*$' || true; } | { grep -vE '^ *[0-9]+ *$' || true; } | sed -E 's/^ +//')"; if [ -n "$t" ]; then printf '\n_Notes:_ %s\n' "$(printf '%s' "$t" | tr '\n' ' ')"; fi; fi
          printf '\n'
        done; } > "$md"
      rm -rf "$tmp"
      printf '%-70s -> %s/%s : slides written\n' "$name" "$rel" "$slug"
      printf '# %s\n\nSource: %s | Release: %s\n\n| File | Content |\n|---|---|\n| 01-slides.md | all slides with speaker notes |\n' "${name%.*}" "$name" "$rel" > "$out/00-index.md" ;;
    txt|rtf|avif) ;;   # sidecars are consumed via their PDF; image has no text
    *) echo "skipped (unsupported): $name" >&2 ;;
  esac
done
echo "done -> $REPO_DIR/docs/*/text/"

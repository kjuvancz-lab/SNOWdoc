#!/usr/bin/env bash
# Pull ServiceNow release documentation (markdown) from the official
# ServiceNow/ServiceNowDocs GitHub mirror into docs/<release>/.
#
# Usage (Git Bash):   bash tools/update_docs.sh            # zurich + australia
#                     bash tools/update_docs.sh yokohama   # any branch names
#
# Re-runnable: refreshes to the latest upstream commit each time and records
# it in docs/<release>/SOURCE_COMMIT.txt. Only the folders listed in FOLDERS
# are pulled; edit that list to add product families.
set -euo pipefail

UPSTREAM="https://github.com/ServiceNow/ServiceNowDocs.git"
REPO_DIR="$(cd "$(dirname "$0")/.." && pwd)"
CACHE="${SNOWDOCS_CACHE:-$HOME/repos/_servicenowdocs-cache}"
RELEASES=("$@")
[ ${#RELEASES[@]} -eq 0 ] && RELEASES=(zurich australia)

# Folders under markdown/ to copy. Globs allowed.
# Deltas only from Yokohama onwards (the corpus starts at Yokohama).
# Release-notes folder names differ per branch (australia: release-notes,
# zurich: zurich-prbsummary-release-notes), hence the glob.
FOLDERS=("*release-notes*" "delta-yokohama-*" "delta-zurich-*" "servicenow-platform/common-service-data-model-csdm")
# Additionally copy single files matching these name globs from any product folder
# into docs/<release>/csdm-topics/<product-folder>/.
FILEGLOBS=("*csdm*")

if [ ! -d "$CACHE/.git" ]; then
  echo "Cloning upstream (blobless, sparse) into $CACHE"
  git -c core.longpaths=true clone --filter=blob:none --no-checkout --sparse "$UPSTREAM" "$CACHE"
fi
cd "$CACHE"
git config core.longpaths true

for rel in "${RELEASES[@]}"; do
  echo "== $rel =="
  git fetch -q origin "$rel"
  patterns=()
  for f in "${FOLDERS[@]}"; do patterns+=("markdown/$f/"); done
  for g in "${FILEGLOBS[@]}"; do patterns+=("markdown/**/$g"); done
  git sparse-checkout set --no-cone "${patterns[@]}"
  git checkout -q --detach FETCH_HEAD
  commit="$(git rev-parse HEAD)"

  dest="$REPO_DIR/docs/$rel"
  rm -rf "$dest"
  mkdir -p "$dest"
  for f in "${FOLDERS[@]}"; do
    for d in markdown/$f; do
      [ -d "$d" ] && cp -r "$d" "$dest/$(basename "$d")"
    done
  done
  # Single files matching FILEGLOBS anywhere under markdown/, kept per product folder.
  for g in "${FILEGLOBS[@]}"; do
    while IFS= read -r -d '' file; do
      relp="${file#markdown/}"; prod="${relp%%/*}"
      skip=0; for fo in "${FOLDERS[@]}"; do case "$relp" in $fo/*) skip=1;; esac; done
      [ $skip -eq 1 ] && continue
      mkdir -p "$dest/csdm-topics/$prod"; cp "$file" "$dest/csdm-topics/$prod/"
    done < <(find markdown -type f -name "$g" -print0)
  done
  # Root files are read straight from the commit (blobless clone fetches on demand).
  git show "FETCH_HEAD:LICENSE"   > "$dest/LICENSE"
  git show "FETCH_HEAD:README.md" > "$dest/UPSTREAM_README.md"
  git show "FETCH_HEAD:llms.txt"  > "$dest/llms.txt" 2>/dev/null || rm -f "$dest/llms.txt"
  printf '%s\n%s\n%s\n' "$UPSTREAM" "branch: $rel" "commit: $commit" > "$dest/SOURCE_COMMIT.txt"

  n=$(find "$dest" -type f | wc -l)
  sz=$(du -sm "$dest" | cut -f1)
  echo "$rel: $n files, ${sz} MB, upstream commit ${commit:0:10}"
done

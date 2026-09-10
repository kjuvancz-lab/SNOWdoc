# SNOWdoc — working rules for Claude

This repo is a ServiceNow documentation index plus the documentation text itself. Answer ServiceNow questions from it. Do not answer from memory when the repo has the source.

## How to find things

1. Read `SNOW_Doc_contents_map.md` first. Section 6 routes topics to documents, section 7 to release notes, section 8 to the text folders.
2. For "how does X work / how do I configure X": open `docs/<release>/text/<document>/00-index.md`, pick the chapter by page range, read only that chapter file. Grep `docs/*/text` when the map does not name a chapter.
3. For "what is new / what changed in a release": use `docs/australia/release-notes/rn-summary-*.md` or `docs/<release>/delta-*/<product>-release-notes.md`.
4. Chapter files carry `<!-- page N -->` markers. Cite the source file and PDF page in every answer.

## Releases

Yokohama < Zurich < Australia. Product manuals in the corpus are mostly Zurich; release notes are Australia. Always state which release an answer comes from. When they disagree, prefer the newer source and say so.

## Do not

- Load whole chapter folders or many chapters at once. One chapter, then more if needed.
- Guess page numbers or release behaviour. If the repo does not cover it, say so.
- Edit anything under `docs/`; it is generated. Change `tools/*.sh` and re-run instead.

## Maintenance

- `bash tools/update_docs.sh` refreshes release notes from the ServiceNow/ServiceNowDocs GitHub mirror.
- `bash tools/extract_corpus.sh` rebuilds `docs/*/text` from the local corpus folder (`SNOW_SRC`, default `~/SNOW Doc`).
- The corporate proxy blocks servicenow.com from the shell; github.com works.

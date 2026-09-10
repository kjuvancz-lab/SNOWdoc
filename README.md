# SNOWdoc

Knowledge repo for chats about ServiceNow. Two parts:

| Part | Where | What |
|---|---|---|
| Contents map | `SNOW_Doc_contents_map.md` | Index of the local corpus `C:\Users\<user>\SNOW Doc` (24 files, 1.2 GB, not in this repo): which file and which page range answers a question. |
| Release docs | `docs/<release>/` | Official ServiceNow release notes and release-to-release delta notes, as markdown, copied from the ServiceNow/ServiceNowDocs GitHub mirror. Currently `zurich` and `australia`. |
| Corpus text | `docs/<release>/text/<document>/` | Full text of the local corpus, split into chapter files by each document's own table of contents, one `00-index.md` per document. `general/` holds documents that belong to no release. |

## Using it in a chat

- Attach or sync this repo to the claude.ai Project. Start with `SNOW_Doc_contents_map.md`; section 7 lists the release-notes entry files, section 8 the corpus text folders.
- For "what changed in release X" questions read the `rn-summary-*.md` or `delta-*/index.md` files first, then the per-product file.
- For "how does X work" questions open `docs/<release>/text/<document>/00-index.md` and read only the chapter file it points to. The PDFs themselves are not in the repo.

## Refreshing the release docs

ServiceNow republishes the mirror about monthly. To refresh (Git Bash):

```bash
bash tools/update_docs.sh              # zurich + australia
bash tools/update_docs.sh yokohama     # add another release
git add docs && git commit -m "Refresh release docs" && git push
```

The script keeps a blobless sparse clone of the mirror in `~/repos/_servicenowdocs-cache` and records the upstream commit in `docs/<release>/SOURCE_COMMIT.txt`. Which folders are pulled is the `FOLDERS` list at the top of the script.

## Refreshing the corpus text

When a file in the local corpus folder is added or replaced (Git Bash, needs `pdftotext`):

```bash
bash tools/extract_corpus.sh
git add docs && git commit -m "Refresh corpus text" && git push
```

Chapters come from each PDF's own table of contents. `MINPAGES` and `MAXPAGES` environment variables tune how fine the split is.

## Sharing and licence

The release docs are copyright ServiceNow, licensed Apache 2.0 (see `docs/<release>/LICENSE`). Redistribution is allowed as long as the licence file stays with the content. Everything else in this repo is our own work. To share: GitHub → Settings → Collaborators, or change visibility to Public.

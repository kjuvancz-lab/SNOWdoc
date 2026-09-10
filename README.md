# SNOWdoc

Knowledge repo for chats about ServiceNow. Two parts:

| Part | Where | What |
|---|---|---|
| Contents map | `SNOW_Doc_contents_map.md` | Index of the local corpus `C:\Users\q407593\SNOW Doc` (24 files, 1.2 GB, not in this repo): which file and which page range answers a question. |
| Release docs | `docs/<release>/` | Official ServiceNow release notes and release-to-release delta notes, as markdown, copied from the ServiceNow/ServiceNowDocs GitHub mirror. Currently `zurich` and `australia`. |

## Using it in a chat

- Attach or sync this repo to the claude.ai Project. Start with `SNOW_Doc_contents_map.md`; section 7 lists the entry files under `docs/`.
- For "what changed in release X" questions read the `rn-summary-*.md` or `delta-*/index.md` files first, then the per-product file.
- The local PDFs are never in the repo. Read them by page range with `pdftotext -f <first> -l <last>`.

## Refreshing the release docs

ServiceNow republishes the mirror about monthly. To refresh (Git Bash):

```bash
bash tools/update_docs.sh              # zurich + australia
bash tools/update_docs.sh yokohama     # add another release
git add docs && git commit -m "Refresh release docs" && git push
```

The script keeps a blobless sparse clone of the mirror in `~/repos/_servicenowdocs-cache` and records the upstream commit in `docs/<release>/SOURCE_COMMIT.txt`. Which folders are pulled is the `FOLDERS` list at the top of the script.

## Sharing and licence

The release docs are copyright ServiceNow, licensed Apache 2.0 (see `docs/<release>/LICENSE`). Redistribution is allowed as long as the licence file stays with the content. Everything else in this repo is our own work. To share: GitHub → Settings → Collaborators, or change visibility to Public.

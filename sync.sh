#!/bin/bash
# Sync sufos notes from iCloud into content/, excluding private files.
# Run this before committing to update the wiki.

SUFOS="/Users/jorgen.lybeck.hansen@m10s.io/Library/Mobile Documents/iCloud~md~obsidian/Documents/Personal/DnD/Characters/sufos"

rsync -av --delete \
  --exclude="CLAUDE.md" \
  --exclude="Drafts/" \
  --exclude=".obsidian/" \
  --exclude="Assets/" \
  "$SUFOS/" \
  "$(dirname "$0")/content/"

echo ""
echo "Synced. Now: git add -A && git commit -m 'update' && git push"

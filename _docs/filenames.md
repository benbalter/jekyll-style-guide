---
title: Filenames
---

### Extensions

When a post contains markdown, use `.md` for the file extension. While `.markdown` will still render, many implementations assume two- to four-letter extension names, as will many developers.

### Numbering page names

Whenever possible, avoid prefixing page filenames with numbers (e.g., `01-about`, `02-contact`). When order must be specified, prefer other means of ordering page navigation such as storing the ordering in YAML front matter, the site's config or a data file.

Filename-based ordering makes it difficult to add additional pages cleanly, and may trick novice Jekyll users into thinking such numbers have special meaning (like Pages date prefixes do). More often than not, hard coded navigation (potentially in an include) will suffice.

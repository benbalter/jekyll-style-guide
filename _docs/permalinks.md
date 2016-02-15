---
title: Permalinks
---

Regardless of the permalink structure, prefer collection and per-file permalinks that end with a trailing slash, rather than `.html`. Pretty permalinks are intended to be read by humans, not machines, and contain no extranious information (format information otherwise conveyed by the response header).

### Collection permalinks

Good:

```yml
permalink: pretty
permalink: /:year/:month/:day/:title/
```

Bad:

```yml
permalink: date
permalink: /:categories/:year/:y_day/:title.html
```

### Per-file permalinks

Don't hide markdown files in subfolders to achieve pretty permalinks. Doing so is unecessary, adds additional steps to most editing workflows, and makes distingusishing between numerous `index.md` files more difficult, when open in a text editor. Generated permalinks should have a logical relationship to the source filename.

Good:

In `about.md` (accessible as `/about/`):

```
---
title: About
permalink: `/about/`
---
```

Bad:

In `about/index.md` (accessible as `/about/`):

```
---
title: About
---
```

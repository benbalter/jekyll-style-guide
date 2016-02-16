---
title: .gitignore
---

Your site should have a `.gitignore` file, with a minimum of the following Git-ignored paths, which are local, unversioned artifacts created during the Jekyll build process:

```
_site
.sass-cache
.jekyll-metadata
```

### `Gemfile.lock`

If the built site is served via GitHub Pages, you should also add `Gemfile.lock` to your site's `.gitignore`. The `github-pages` gem strictly versions dependencies, rendering versioning the lockfile unnecessary, and potentially could result in using outdated gem versions.

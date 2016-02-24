---
title: The config file
---

### The format

Config files should be YAML.

### Arrays

Prefer multi-line arrays for readability and version control purposes.

Good:

```yml
numbers:
  - one
  - two
  - three
```

Bad:

```yml
numbers: [one, two, three]
```

### Variables

Use the following site-wide variables, where appropriate:

* `title` - the name of the site. Use `title` and not name to match document and page meta.
* `description` - the site's tagline or subtitle

### Baseurl

The site's base URL is [only to be used when the resulting site lives at a subpath of the domain](https://byparker.com/blog/2014/clearing-up-confusion-around-baseurl/). Otherwise, the subpath should be nil, not `/`.

* Example 1: If your site lives at `example.com/blog`, you should have a `baseurl` of `/blog`.
* Example 2: If your site lives at `example.com`, you should not set a `baseurl`. Not even `/`.

### The `site.github` namespace

When your site is intended to be hosted on GitHub Pages, prefer values in the `site.github` namespace to manually specified values. In additional to reducing configuration noise, this will save headache if your repository is renamed, you add a CNAME, the project is forked, or if you preview the site locally.

### URL

Prefer `site.github.url` when using GitHub Pages. To ensure your site renders properly locally, add the following to your site's config (which will be overridden by GitHub Pages):

```yml
github:
  url: http://localhost:4000
```

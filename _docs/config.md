---
title: The config file
---

### The format

Config files should be written YAML.

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

* `title` - the name of the site. Use `title` and not `name` to match document and page metadata.
* `description` - the site's tagline or subtitle

### Baseurl

The site's base URL is [only to be used when the resulting site lives at a subpath of the domain](https://byparker.com/blog/2014/clearing-up-confusion-around-baseurl/). Otherwise, the subpath should be nil, not `/`.

* Example 1: If your site lives at `example.com/blog`, you should have a `baseurl` of `/blog`.
* Example 2: If your site lives at `example.com`, you should not set a `baseurl`. Not even `/`.

### The `site.github` namespace

When your site is intended to be hosted on GitHub Pages, prefer values in the `site.github` namespace to manually specified values. In additional to reducing configuration noise, this will save headache if your repository is renamed, you add a CNAME, the project is forked, or if you preview the site locally.

Any value in the `site.github` namespace can be overridden as follows:

```yml
github:
  source:
    branch: foo
```

### URL

While `url`is not a mandatory config key, it is automatically set in development mode to `http://localhost:4000` since Jekyll 3.3 and by GitHub Pages in production.

Prefer the `absolute_url` and `relative_url` filters in templates to calling `site.github` or `site.baseurl` directly to better account for environment and configuration inconsistencies.

```liquid
<a href="{{ post.url | absolute_url }}">Post</a>

<a href="{{ "foo" | relative_url }}">Foo</a>
```

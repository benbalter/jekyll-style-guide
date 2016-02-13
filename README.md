# Jekyll style guide

A style guide for building Jekyll sites

## Introduction

### What is this thing?

An opinionated guide to common Jekyll design patterns and anti-patterns.

### Why write this?

Jekyll's increadibly flexible, but in some instances, the lack of common conventions make things harder for users. For one, there are many common design patterns that are still relatively unknown to new users (e.g., using `permalink: /about/` in `about.md`, rather than creating `/about/index.md`). For another, when writing a plugin or theme intended to be used across sites, should it look for `site.title` or `site.name`? `site.description` or `site.tagline`? Moar options, moar problems.

### Current status

This document is an early draft intended to collect feedback. Once a 1.0 is reached, it'd be cool to create a Jekyll site to display the rules and/or a Jekyll linter to enforce site-wide styles.

## The style guide

### The config file

#### The format

Config files should be YAML.

#### Arrays

Prefer multi-line arrays for readablility and version control purposes.

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

#### Variables

Use the following site-wide variables, where appropriate:

* `title` - the name of the site. Use `title` and not name to match document and page meta.
* `description` - the site's tagline or subtitle

#### Baseurl

The site's base URL is [only to be used when the resulting site lives at a subpath of the domain](https://byparker.com/blog/2014/clearing-up-confusion-around-baseurl/). Otherwise, the subpath should be nil, not `/`.

* Example 1: If your site lives at `example.com/blog`, you should have a `baseurl` of `/blog`.
* Example 2: If your site lives at `example.com/blog`, you should not set a `baseurl`. Not even `/`.

#### URL

When your site is intended to be hosted on GitHub Pages, prefer `site.github.url`, to a manually specified `url`. This will save headache if your repository is renamed, you add a CNAME, the project is forked, or if you preview the site locally. To ensure your site renders properly locally, add the following to your site's config (which will be overwridden by GitHub Pages):

```yml
github:
  url: http://localhost:4000
```

### Permalinks

Regardless of the permalink structure, prefer collection and per-file permalinks that end with a trailing slash, rather than `.html`. Pretty permalinks are intended to be read by humans, not machines, and contain no extranious information (format information otherwise conveyed by the response header).

#### Collection permalinks

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

#### Per-file permalinks

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

### Layouts and includes

#### The site's primary layout

The site's primary layout should be called `default.html`. Where possible, all other layouts should enherit from the default layout.

#### Header and footer includes

Unless unusually complex, do not delegate header and footer markup to dedicated includes. This adds unecessary complexity for simple sites. While many WordPress themes, for example, may do this, Rails, and the majority of the Ruby world (from which Jekyll gets its roots), do not.

### Syntax highlighting

Prefer backtick-style fenced-code blocks to Liquid-style `highlight` tags. This allows the markdown to render both within Jekyll and to be previewed on GitHub.com. Note: You may need to configure your markdown engine to properly support them. For Kramdown, that's:

```yml
kramdown:
  input: GFM
```

### Information architecture

#### When to use posts

Post are to be used for the site's primary (or only) chronolocically ordered content. Examples of this may be blog posts or news articles.

### When to use collections

Use collections for any logically grouped content, chronological or not, that are not posts. Examples of collections might be employees, puppies, or releases. Each logical group of documents should be their own collection. For more information, see [explain like I'm five: Jekyll collections](http://ben.balter.com/2015/02/20/jekyll-collections/).

### When to use pages

Use pages for any non-chronological content that cannot be logically grouped together (and thus are not posts or collections). Examples of pages might be the index page, an about page, a contact us page, or a resume page.

### When to use data

Use data (YAML, JSON, or CSV files in the `_data` folder) for site-wide configuration, settings, or other primarily static information. Examples of data might be the site's authors, a list of press clippings, or a glossary of terms. Generally, the distinction between collections and data is that data files do not have a large markdown body, and live in a single file, rather than multiple files. Unlike collections, data files cannot render as individual files.

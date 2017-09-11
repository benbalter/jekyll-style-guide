---
title: The Gemfile
---

### The GitHub Pages Gem

When your site is hosted on GitHub Pages, you should use the GitHub Pages Gem, rather than individually requiring dependencies. This ensures that when previewing locally your site is built with the same versions as used in production.

Additionally, the plugin should be in the `:jekyll_plugins` group, to ensure it can set configuration defaults and restrictions to match those used by GitHub Pages:

```ruby
source 'https://rubygems.org'

gem 'github-pages', group: :jekyll_plugins
```

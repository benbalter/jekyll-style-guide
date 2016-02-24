---
title: Plugins
---

### Plugins generally

For common use cases, prefer plugins with shared templates or logic over hard-coded HTML.

### Gem-based plugins

Prefer Gem-based plugins over individual files in the `_plugins` folder.

### Security

When writing plugins that may be run with untrusted user content, prefer liquid tempting and logic over Ruby, and internal Jekyll implementations over plugin-specific methods to minimize the surface area that needs to be secured.

### Naming

Plugins should be descriptively named and preceded by `jekyll-`, (e.g., `jekyll-avatars`).

Plugins should be namespaced within the `Jekyll` module. The top-level class should not be prefixed with `Jekyll`.

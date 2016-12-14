---
title: Themes
---

### Sass

The theme's primary Sass include should match the full theme name (e.g., `_sass/jekyll-theme-awesome.sccs`). This makes it easy (and predictible) for downstream users to include your theme's styles in their own custom stylesheet.

### Stylesheet

The theme's primary stylesheet should live at `assets/css/style.scss` and contain *only* the following content (with "[THEME NAME]" being the name of your theme's primary Sass include):

```liquid
---
---

@import "[THEME NAME]";
```

This way, by not importing additional includes, downstream users can easily add custom CSS that builds upon your theme, or switch themes, while maintaining a simple and predictable `assets/css/style.scss` file (often replacing your theme's name with `{{ site.theme }}` for further compatibility).

### Layouts

Your theme must contain at least one layout at `_layouts/default.html`. Other layouts, such as `page`, `post`, or `home` are optional, and should inharit from the default layout, where possible.

Additionally, your layout should source the `assets/css/style.css` file to load your primary stylesheet. You may, optionally require additional stylesheets, such as a mobile or print stylesheet, where necessary, but it's best to use a single stylesheet, wherever possible, to avoid confusion when switching between themes.

### Configuration

Themes should, at minimum, respect the following configuration variables, if set in the user's `_config.yml`:

* `title` - the title of the site
* `description` - a brief description of the site

If intended to be used on GitHub Pages, themes should default to the following variables, if the above variables are not set:

* For `title`, themes should default to `site.github.repository_name` (e.g., `{{ title | default: site.github.repository_name }}`)
* For `description`, themes should default to `site.github.project_description` (e.g., `{{ title | default: site.github.project_description }}`)

Additionally, themes may choose to honor the following variables, if set in the user's `_config.yml`:

* `show_downloads` - Whether to link to the project's download links (e.g, `site.github.zip_url` or `site.github.tar_url`)
* `google_analytics` - A Google Analytics tracking ID, to be used in a Google Analytics tracking tag

See [this help article](https://help.github.com/articles/repository-metadata-on-github-pages/) for a full list of repository metadata available to themes on GitHub Pages.

### Syntax highlighting

Themes should support Jekyll's syntax highlighting by sourcing a [Rouge stylesheet](https://github.com/jneen/rouge/tree/master/lib/rouge/themes), often as a Sass import. To generate a stylesheet, you can use the following command (choosing the Rouge theme that best suits your Jekyll theme):

```
rougify style github > _scss/rouge.scss
```

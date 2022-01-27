---
title: Information architecture
---

### When to use posts

Post are to be used for the site's primary (or only) chronologically ordered content. Examples of this may be blog posts or news articles.

### When to use collections

Use collections for any logically grouped content, chronological or not, that are not posts. Examples of collections might be employees, puppies, or releases. Each logical group of documents should be their own collection. For more information, see [explain like I'm five: Jekyll collections](http://ben.balter.com/2015/02/20/jekyll-collections/).

### When to use pages

Use pages for any non-chronological content that cannot be logically grouped together (and thus are not posts or collections). Examples of pages might be the index page, an about page, a contact us page, or a resume page.

### When to use data

Use data (YAML, JSON, or CSV files in the `_data` folder) for site-wide content or other primarily static information that is not otherwise rendered as individual files like documents or pages.

Examples of data might be the site's authors, a list of press clippings, or a glossary of terms.

Generally, the distinction between collections and data is that data files do not have a large markdown body, and live in a single file, rather than multiple files. Unlike collections, data files cannot render as individual files.

The data folder is not a substitute for the site's `_config.yml` file. Data files should contain information about *the subject of the site*, while the config file contains settings that determines *how the site is built*.

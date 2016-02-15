---
title: Syntax highlighting
---

Prefer backtick-style fenced-code blocks to Liquid-style `highlight` tags. This allows the markdown to render both within Jekyll and to be previewed on GitHub.com. Note: You may need to configure your markdown engine to properly support them. For Kramdown, that's:

```yml
kramdown:
  input: GFM
```

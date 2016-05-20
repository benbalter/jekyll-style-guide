---
title: Liquid Syntax
---

### General Syntax

Use a space between opening and closing tags, ex: `{{ site.title }}` not `{{site.title}}`.

### Indentation

Place sequential statements at the same indentation level and indent nested statements.

```
{% assign handle = 'cake' %}
{% case handle %}
  {% when 'cake' %}
     This is a cake
  {% when 'cookie' %}
     This is a cookie
  {% else %}
     This is not a cake nor a cookie
{% endcase %}
```

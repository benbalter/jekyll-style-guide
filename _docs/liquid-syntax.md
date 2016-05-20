---
title: Liquid Syntax
---

### General Syntax

* Use a space between opening and closing tags, ex: `{{ site.title }}` not `{{site.title}}`.

### Indentation

Place sequential statements at the same indentation level and indent nested statements.

Good:

```
{% assign handle = 'cake' %}
{% case handle %}
  {% when 'cake' %}
     <p>This is a cake</p>
  {% when 'cookie' %}
     <p>This is a cookie</p>
  {% else %}
     <p>This is not a cake nor a cookie</p>
{% endcase %}
```

Bad:

```
{% assign handle = 'cake' %}
{% case handle %}
{% when 'cake' %}
<p>This is a cake</p>
{% when 'cookie' %}
<p>This is a cookie</p>
{% else %}
<p>This is not a cake nor a cookie</p>
{% endcase %}
```

### Vertical Whitespace

Place empty lines between unrelated code blocks to improve readability.

Good:

```
{% if page.title %}
  <h1>{{ page.title }}</h1>
{% endif %}

{% if page.description %}
  <p>{{ page.description }}</p>
{% endif %}
```

Bad:

```
{% if page.title %}
  <h1>{{ page.title }}</h1>
{% endif %}
{% if page.description %}
  <p>{{ page.description }}</p>
{% endif %}
```

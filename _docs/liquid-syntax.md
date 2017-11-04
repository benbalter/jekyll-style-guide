---
title: Liquid syntax
---

### General Syntax

* Use a space between opening and closing tags. Good: <!-- {% raw %} -->`{{ site.title }}`<!-- {% endraw %} -->, Bad: <!-- {% raw %} -->`{{site.title}}` <!--{% endraw %} -->

### Indentation

Place sequential statements at the same indentation level and indent nested statements.

Good:

<!-- {% raw %} -->

```liquid
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

<!--{% endraw %} -->

Bad:

<!-- {% raw %} -->

```liquid
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

<!--{% endraw %} -->

### Vertical Whitespace

Place empty lines between unrelated code blocks to improve readability.

Good:

<!-- {% raw %} -->

```liquid
{% if page.title %}
  <h1>{{ page.title }}</h1>
{% endif %}

{% if page.description %}
  <p>{{ page.description }}</p>
{% endif %}
```

<!--{% endraw %} -->

Bad:

<!-- {% raw %} -->

```liquid
{% if page.title %}
  <h1>{{ page.title }}</h1>
{% endif %}
{% if page.description %}
  <p>{{ page.description }}</p>
{% endif %}
```

<!--{% endraw %} -->

---
title: Layouts and includes
---

### The site's primary layout

The site's primary layout should be called `default.html`. Where possible, all other layouts should inherit from the default layout.

### Header and footer includes

Unless unusually complex, do not delegate header and footer markup to dedicated includes. This adds unnecessary complexity for simple sites. While many WordPress themes, for example, may do this, Rails, and the majority of the Ruby world (from which Jekyll gets its roots), do not.

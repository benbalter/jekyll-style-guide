---
title: The GitHub repository
---

If your site is hosted in a GitHub Pages repository, prefer the following:

### The default branch

If your site uses only the `gh-pages` branch, set the `gh-pages` branch to your default branch and delete the `master` branch. This will ensure that when users visit your site's repository, they see your site's content, and that you don't accidentally commit to the `master` branch, allowing the two to get out of sync. It will also set the default target for pull requests, ensuring contributors can't do the same.

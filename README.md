# About
This is a static and responsive GNU social landing page made with Hugo. It
offers both a news and a documentation section, content translation and string
localization.
Changes to this site should be submitted as a merge request to this repository.

# Getting Started
In order to build this project locally it is first necessary to have Hugo
installed (please follow [Hugo's](https://gohugo.io/getting-started/quick-start/)
official guidelines to do so).

## Cheat sheet
**To build:** `hugo`

**To develop:** `hugo server`

**To add a news post:** `hugo new --kind news news/file.md`

**To add a documentation post:** `hugo new --kind docs docs/file.md`

# Features
* Responsive design: optimized both for mobile & desktop
* News section: organized by date in ascending order; the first 4 will be
  displayed on the landing page for better reaching
* i18n: thanks to Hugo's content directory management, translation for each
  news/docs page in multilingual-specific directories will be linked automatically
* Related News: at the end of each news post, links to other news with at least
  a common tag will be displayed
* Meta data for all news posts: post data including links to category and tags,
  author and word count
* Paginated list: simple list pagination with page indicators



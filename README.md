# About
*GNU social* is a free and libre social networking platform.

This *website* made with Hugo is aimed to provide a landing page with basic *information* about it.

It offers both a news and a docs/pages section, content translation and string
localization.
Changes to this site should be submitted as a merge request to this repository.

# Getting Started
In order to build this project locally it is first necessary to have Hugo
installed (please follow [Hugo's](https://gohugo.io/getting-started/quick-start/)
official guidelines to do so).

## Cheat sheet
**To build:** `./deploy.sh` the result will be available in a newly
create `public` directory.

**To develop:** `hugo server`

**To add a news post:** `hugo new --kind news news/file.md`

**To add a documentation post:** `hugo new --kind docs docs/file.md`

## i18n
*Internationalization* process is made per directory so, you can contribute
translating to your language by:
- cloning this repository;
- adding a directory using your language code;
- put required files inside this new folder;
- add your language to the footer.

**Note**: Please watch this repository to maintain your translation up to date.

*Report* bugs or suggestions to the respective translators here (add yourself):

- English - https://gnusocial.cc/dalme
- Spanish - https://khp.ignorelist.com/aab
- Galician - https://gnusocial.cc/idorun
- Portuguese - https://loadaverage.org/diogo
- Italian - https://loadaverage.org/susannadiv

or

- create an *issue* here https://gitlab.com/DalmeGNU/gnusocial.network/issues

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



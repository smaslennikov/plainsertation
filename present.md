---
author: Slava Maslennikov
title: Template presentation
---
# Markdown Presentation template

---
## Fork the repo on github

---
## Enable GitHub pages on your fork

---
## Edit present.md to your liking
* examples can be found [here](https://GitHub.com/egonSchiele/mdpress)

---
## Install dependencies

for ubuntu:

    make install_dependencies_ubuntu

for gentoo:

    make install_dependencies_gentoo

for OS X (untested):

    gem install mdpress

----
## Build your .md file and push to your repo
* `make all` can be used to build all .md files in the repo directory
* `make open_all` can be used to build all .md files **and** open the resulting presentations in your default browser

---
## If enabled, Travis CI will ensure you built the most recent version before pushing

---
## You can view your newly made presentation both locally and through GitHub pages:
* Locally by pointing your browser to index.html in the build directory
* On GitHub pages once you push to GitHub (if you forgot to build with `make all` first, this won't work)

#!/usr/bin/env bash

THE_BASE_DIR_PATH=$(cd -P -- "$(dirname -- "$0")" && pwd -P)


## install jekyll
## https://jekyllrb.com/docs/installation/
## https://jekyllrb.com/docs/quickstart/
gem install jekyll bundler


## install gh-pages
## https://pages.github.com/
## https://help.github.com/articles/setting-up-your-github-pages-site-locally-with-jekyll/
## https://jekyllrb.com/docs/github-pages/
gem install github-pages


THE_MAKEFILE_FILE_PATH := $(abspath $(lastword $(MAKEFILE_LIST)))
THE_BASE_DIR_PATH := $(abspath $(dir $(THE_MAKEFILE_FILE_PATH)))
THE_BIN_DIR_PATH := $(THE_BASE_DIR_PATH)/bin

PATH := $(THE_BIN_DIR_PATH):$(PATH)

default: help
.PHONY: default

help:
	@help.sh
.PHONY: help

rbenv-install:
	@rbenv-install.sh
.PHONY: rbenv-install

rbenv-update:
	@rbenv-update.sh
.PHONY: rbenv-update

ruby-build-dep:
	@ruby-build-dep.sh
.PHONY: ruby-build-dep

ruby-install:
	@ruby-install.sh
.PHONY: ruby-install

jekyll-install:
	@jekyll-install.sh
.PHONY: jekyll-install

bundle-install:
	@bundle-install.sh
.PHONY: bundle-install

blog-create:
	@blog-create.sh
.PHONY: blog-create

serve:
	@blog-serve.sh
.PHONY: serve

build:
	@blog-build.sh
.PHONY: build

add:
	@git-add.sh
.PHONY: add

commit:
	@git-commit.sh
.PHONY: commit

push:
	@git-push.sh
.PHONY: push

status:
	@git-status.sh
.PHONY: status

log:
	@git-log.sh
.PHONY: log

git-clone:
	@git-clone.sh
.PHONY: git-clone

git-user-config:
	@git-user-config.sh
.PHONY: git-user-config

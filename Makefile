
THE_MAKEFILE_FILE_PATH := $(abspath $(lastword $(MAKEFILE_LIST)))
THE_BASE_DIR_PATH := $(abspath $(dir $(THE_MAKEFILE_FILE_PATH)))
THE_BIN_DIR_PATH := $(THE_BASE_DIR_PATH)/bin

.PHONY: usage rbenv-install rbenv-update ruby-build-prepare ruby-install jekyll-install bundle-install blog-create serve build add commit push status log git-clone git-user-config

usage:
	@$(THE_BIN_DIR_PATH)/usage.sh

rbenv-install:
	@$(THE_BIN_DIR_PATH)/rbenv-install.sh

rbenv-update:
	@$(THE_BIN_DIR_PATH)/rbenv-update.sh

ruby-build-prepare:
	@$(THE_BIN_DIR_PATH)/ruby-build-prepare.sh

ruby-install:
	@$(THE_BIN_DIR_PATH)/ruby-install.sh

jekyll-install:
	@$(THE_BIN_DIR_PATH)/jekyll-install.sh

bundle-install:
	@$(THE_BIN_DIR_PATH)/bundle-install.sh

blog-create:
	@$(THE_BIN_DIR_PATH)/blog-create.sh

serve:
	@$(THE_BIN_DIR_PATH)/blog-serve.sh

build:
	@$(THE_BIN_DIR_PATH)/blog-build.sh

add:
	@$(THE_BIN_DIR_PATH)/git-add.sh

commit:
	@$(THE_BIN_DIR_PATH)/git-commit.sh

push:
	@$(THE_BIN_DIR_PATH)/git-push.sh

status:
	@$(THE_BIN_DIR_PATH)/git-status.sh

log:
	@$(THE_BIN_DIR_PATH)/git-log.sh

git-clone:
	@$(THE_BIN_DIR_PATH)/git-clone.sh

git-user-config:
	@$(THE_BIN_DIR_PATH)/git-user-config.sh

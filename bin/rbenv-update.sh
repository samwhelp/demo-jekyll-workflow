#!/usr/bin/env bash

THE_BASE_DIR_PATH=$(cd -P -- "$(dirname -- "$0")" && pwd -P)


THE_RBENV_GIT_DIR_PATH=$HOME/.rbenv
THE_RBENV_RUBY_BUILD_GIT_DIR_PATH=$THE_RBENV_GIT_DIR_PATH/plugins/ruby-build


if [ -a $THE_RBENV_GIT_DIR_PATH ]; then
	cd $THE_RBENV_GIT_DIR_PATH
	git pull
fi

if [ -a $THE_RBENV_RUBY_BUILD_GIT_DIR_PATH ]; then
	cd $THE_RBENV_RUBY_BUILD_GIT_DIR_PATH
	git pull
fi

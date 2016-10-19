#!/usr/bin/env bash

THE_BASE_DIR_PATH=$(cd -P -- "$(dirname -- "$0")" && pwd -P)


THE_RBENV_GIT_URL=https://github.com/rbenv/rbenv.git
THE_RBENV_RUBY_BUILD_GIT_URL=https://github.com/rbenv/ruby-build.git
THE_RBENV_GIT_DIR_PATH=$HOME/.rbenv
THE_RBENV_RUBY_BUILD_GIT_DIR_PATH=$THE_RBENV_GIT_DIR_PATH/plugins/ruby-build
THE_BASHRC_FILE_PATH=$HOME/.bashrc


THE_SETTING_FLAG='## rbenv setting'

exist_setting () {
	grep "$THE_SETTING_FLAG" $THE_BASHRC_FILE_PATH -q
}


## git clone
## https://github.com/rbenv/rbenv
if ! [ -a $THE_RBENV_GIT_DIR_PATH ]; then
	## git clone https://github.com/rbenv/rbenv.git ~/.rbenv
	git clone $THE_RBENV_GIT_URL $THE_RBENV_GIT_DIR_PATH
fi


## rbenv plugin / ruby-build
## https://github.com/rbenv/ruby-build
if ! [ -a $THE_RBENV_RUBY_BUILD_GIT_DIR_PATH ]; then
	## git clone https://github.com/rbenv/ruby-build.git ~/.rbenv/plugins/ruby-build
	git clone $THE_RBENV_RUBY_BUILD_GIT_URL $THE_RBENV_RUBY_BUILD_GIT_DIR_PATH
fi


## rbenv setting
if ! exist_setting; then
	echo >> $THE_BASHRC_FILE_PATH
	echo '## rbenv setting' >> $THE_BASHRC_FILE_PATH
	echo 'export PATH="$HOME/.rbenv/bin:$PATH"' >> $THE_BASHRC_FILE_PATH
	echo 'eval "$(rbenv init -)"' >> $THE_BASHRC_FILE_PATH
	echo >> $THE_BASHRC_FILE_PATH

	source $THE_BASHRC_FILE_PATH
fi

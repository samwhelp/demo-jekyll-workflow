#!/usr/bin/env bash

THE_BASE_DIR_PATH=$(cd -P -- "$(dirname -- "$0")" && pwd -P)

## 觀看ruby目前有那些版本可以安裝
# rbenv install -l | less

## install ruby 2.3.1
rbenv install 2.3.1


## set local ruby version 2.3.1
rbenv local 2.3.1

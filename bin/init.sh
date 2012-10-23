#!/bin/bash

VIM_ROOT_DIR="$(dirname $0)/.."

cd
rm -rf .vim .vimrc
ln -s "${VIM_ROOT_DIR}/vim" .vim
ln -s "${VIM_ROOT_DIR}/vimrc" .vimrc
cd "${VIM_ROOT_DIR}"
git submodule init
git submodule update
vim +BundleInstall +qall

#!/bin/bash

VIMRC=~/.vimrc

function rc_create() {
	echo "" > $VIMRC
}

function rc_append_line() {
	echo "$@" >> $VIMRC
}

function rc_append_file() {
	cat $1 >> $VIMRC
}


curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
  https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

rc_create
rc_append_file head.rc

rc_append_line ""
rc_append_line "call plug#begin('~/.vim/plugged')"
rc_append_line "Plug 'scrooloose/nerdtree'"
rc_append_line "Plug 'tpope/vim-fugitive'"
rc_append_line "Plug 'majutsushi/tagbar'"
rc_append_line "Plug 'vim-airline/vim-airline'"
rc_append_line "Plug 'vim-airline/vim-airline-themes'"
#rc_append_line "Plug 'valloric/youcompleteme'"
rc_append_line "Plug 'vim-scripts/AutoComplPop'"
rc_append_line "Plug 'flazz/vim-colorschemes'"
rc_append_line "Plug 'vim-scripts/gtags.vim'"
rc_append_line "Plug 'c9s/colorselector.vim'"
rc_append_line "Plug 'kien/ctrlp.vim'"
#rc_append_line "Plug 'scrooloose/syntastic'"
rc_append_line "call plug#end()"

rc_append_line ""
rc_append_file tail.rc

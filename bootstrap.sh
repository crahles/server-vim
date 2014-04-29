#!/bin/sh
cp -r /etc/vim /etc/.vim.old 2>/dev/null
rm -fr /etc/vim 2>/dev/null
git clone https://github.com/crahles/server-vim /etc/vim && cd /etc/vim && vim -c BundleInstall! -c q -c q -u bundles.vim

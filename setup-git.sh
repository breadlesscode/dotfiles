#!/bin/bash

git config --global user.email $MY_EMAIL;
git config --global user.name $MY_NAME;

git config --global core.editor "subl -n -w";
git config --global core.excludesfile $HOME/.gitignore;

git config --global difftool.default-difftool.cmd "code --wait --diff \$LOCAL \$REMOTE";
git config --global diff.tool "default-difftool";

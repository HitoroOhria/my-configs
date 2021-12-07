#i/bin/sh

SCRIPT_DIR=$(cd $(dirname "$0"); pwd)

# replace git config file
ln -s "$SCRIPT_DIR"/.gitconfig ~/
ln -s "$SCRIPT_DIR"/.gitignore_global ~/

# setting for update git by homebew
# see https://udomomo.hatenablog.com/entry/2019/12/01/181404
sudo ln -s $(brew --prefix git)/share/git-core/contrib/diff-highlight/diff-highlight /usr/local/bin/

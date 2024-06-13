#i/bin/sh

SCRIPT_DIR=$(cd $(dirname "$0"); pwd)

# replace git config file
ln -s "$SCRIPT_DIR"/gitconfig ~/.gitconfig && \
  ln -s "$SCRIPT_DIR"/gitignore_global ~/.gitignore_global

# setting for update git by homebew
# see https://udomomo.hatenablog.com/entry/2019/12/01/181404
sudo ln -s $(brew --prefix git)/share/git-core/contrib/diff-highlight/diff-highlight /usr/local/bin/

# diff-highlight
sudo chmod +x /usr/share/doc/git/contrib/diff-highlight/diff-highlight


#!/usr/bin/env bash

# bootstrap.sh idea goes to:
# http://githubcom/mathiasbynens/dotfiles

cd "$(dirname "${BASH_SOURCE}")"

# echo "Updating local 'dotfiles' workspace via git ..."
# git pull origin master || exit 1

function doIt() {
	echo "Copying local 'dotfiles' to home directory ..."
	rsync --exclude ".git/" --exclude ".DS_Store" --exclude "bootstrap.sh" \
	      --exclude "README.md" --exclude "LICENSE" -av --no-perms . ~
    source ~/.bash_profile
}

if [ "$1" == "--force" -o "$1" == "-f" ]; then
	doIt
else
	read -p "This may overwrite existing files in your home directory.  Are you sure? (y/n) " -n 1
	echo
	if [[ $REPLY =~ ^[Yy]$ ]]; then
		doIt
	fi
fi

unset doIt

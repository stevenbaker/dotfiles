# stevenbaker's dotfiles
=========

## Introduction 

_Common problem: When the commandline is your home, SSH'ing into a new box feels like moving into an empty apartment._

Solution: This repo.  It's my way to quickly and easily get my current shell environment to something that feels familiar, across a variety of setups:

* Local Mac OS machine
* Remote Linux instances
* Vagrant boxes

If you like this, please also see:

* [dotfiles.github.io](https://dotfiles.github.io) - a collection of many similar 'dotfiles' repos
* [mathias's dotfiles](https://www.github.com/mathiasbynens/dotfiles) - the masterclass effort - this repo strongly inspired by his

## Installation

### Using Git + install script

Clone the repository wherever you want on disk. 

```bash
# HTTPS
git clone https://github.com/stevenbaker/dotfiles.git && cd dotfiles

# SSH
git clone git@github.com:stevenbaker/dotfiles.git && cd dotfiles
```

To copy the repo's dotfiles into your home directory, run the boostrap script:
```bash
source install.sh
```

Note that this will overwrite any existing files of the same name that you have in your home directory.  Because of this, a confirmation prompt is shown.

You can avoid the confirmation prompt:
```bash
set -- -f; source install.sh
```

### Git-free install

The following command will install the dotfiles directly to your home directory without using Git:

```bash
cd; curl -#L https://github.com/stevenbaker/dotfiles/tarball/master | tar xzv --strip-components 1 --exclude={README.md,install.sh,LICENSE}
```

## Adding local / custom settings

Occasionally, you will have extra commands or settings that you would like in your local BASH environment that do *not* make sense to commit to a public repository.  A good example of this would be your personal git `user.name` and `user.email`.

Or, you may desire to override existing settings from this dotfiles repository on a case-by-case basis.

Please put any such settings into `~/.bash_extras`:

```bash
# Git credentials
# Not in the dotfiles repository
GIT_AUTHOR_NAME="Steve Baker"
GIT_AUTHOR_EMAIL="stevenbaker@mailinator.com"
GIT_COMMITTER_NAME="$GIT_AUTHOR_NAME"
GIT_COMMITTER_EMAIL="$GIT_AUTHOR_EMAIL"
git config --global user.name "$GIT_AUTHOR_NAME"
git config --global user.email "$GIT_AUTHOR_EMAIL"
```

If this exists in your home directory, it will be sourced.  But it should not be checked into source control. 

## Feedback

Would love to [hear what you think](https://github.com/stevenbaker/dotfiles/issues).


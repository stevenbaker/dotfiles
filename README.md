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
* [mathias's dotfiles](https://mathiasbynens/dotfiles) - the masterclass effort - this repo strongly inspired by his

## Installation

### Using Git + install script

You can clone the repository where you want.

```bash
git clone https://github.com/stevenbaker/dotfiles.git && cd dotfiles
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

## Feedback

Would love to [hear what you think](https://github.com/stevenbaker/dotfiles).


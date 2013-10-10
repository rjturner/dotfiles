dotfiles
========

A full reboot of my original dotfiles project, based on what I learned there.
Mainly I learned that it is possible but stupid to make my home directory a git
repository. This repository sits in a subdirectory with symlink install.

install
-------

1. Set up SSH keyless login
2. git clone git@github.com:rjturner/dotfiles.git

vim plugins
-----------

Install new vim plugins thus:

1. `cd ~/path/to/dotfiles.git`
2. `git submodule add <Clone URL/vim-plugin.git> vim/bundle/<plugin>`
3. `git commit -m "Install <plugin> as git submodule"`

local
-----

All configuration files source ~/.NAME.local for host-specific, experimental,
or non-versioned configurations.

notes
-----

Vim plugins are managed using Tim Pope's pathogen.git.  I install pathogen as
its own submodule (using the procedure above) and include a runtime directive
before calling `execute pathogen#infect()`

    runtime bundle/pathogen/autoload/pathogen.vim

These plugins are managed as separate submodules.  When cloning the dotfiles
repository to a new system, it may be necessary to run:

    git submodule update --init

credits
-------

Some code is borrowed or inspired by https://github.com/thoughtbot/dotfiles
under the MIT license.

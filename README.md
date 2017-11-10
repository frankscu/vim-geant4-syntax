# vim-geant4-syntax

Basic syntax highlighting for the Geant4 Detector Simulation Framework
<http://geant4.cern.ch/>

## Usage

There are several methods for activating this plugin's syntax
highlighting:

| Command                     | Short hand            |
| :-------------------------- | :-------------------- |
| `:setfiletype cpp.geant4`     | `:setf cpp.geant4`      |
| `:set filetype=cpp.geant4`    | `:se ft=cpp.geant4`     |
| `:set syntax=cpp.geant4`      | `:se syn=cpp.geant4`    |



So long as Vim had detected the use of `c` , `cpp` or `cc` before,
which it almost certainly would if you have the following in your vimrc.

```VimL
filetype on
syntax enable
```

Although setting the filetype is more semantically correct, there can
be some issues with plugins that use the `&filetype` variable to add
functionality. If this occurs, then please inject the highlighting by
setting the `&syntax` variable, as described above.

Reïterating the safest method is to use:

```Vim:
:se syn+=.geant4
```

## Installation

Install this plugin by *your* preferred method. A few examples are given
below.

### Vim Package Managers

You can install this using your favourite Vim package manager. If you
are not using a package manager, you may find it helpful.

There are many different package managers, and it is assumed you know
how to install the one of your choice and how to use them.

### Vundle

Place this in your `.vimrc`:

    Plugin 'frankscu/vim-geant4-syntax'

Then run the following in Vim:

    :source $MYVIMRC
    :PluginInstall

*For Vundle version < 0.10.2, replace `Plugin` with `Bundle` above.*


### Packages

## License

vim-geant4-syntax is published under the MIT license (see `LICENSE`).

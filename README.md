#  My current Neovim dotfiles!
This is a repo that contains my current neovim config feel free to use this config if you want<br>
![GitHub commit activity](https://img.shields.io/github/commit-activity/w/marc2h9/neovim-dotfiles) ![GitHub last commit](https://img.shields.io/github/last-commit/marc2h9/neovim-dotfiles) ![GitHub Created At](https://img.shields.io/github/created-at/marc2h9/neovim-dotfiles)

## Requirements
* [Neovim v0.11.2 or higher](https://github.com/neovim/neovim)
* [packer](https://github.com/wbthomason/packer.nvim)
* [curl](https://github.com/curl/curl)
* [tar](https://www.gnu.org/software/tar/)
* [node](https://github.com/nodejs/node)
* [npm](https://github.com/npm/cli)
* [tree-sitter](https://github.com/tree-sitter/tree-sitter)
* [ripgrep](https://github.com/BurntSushi/ripgrep)


## Installation Instructions
The best place for your dotfiles would be in the home directory
Please make sure you have all requirements before continuing

### Neovim
To install the neovim dotfiles you first have to follow the download instructions for Packer
After you have done that you must create a symbolic link using the following command:
```
ln -s path/to/dotfiles/nvim/ ~/.config/nvim
```
Once you have ran the command verify that the link does exist by going to the directory and running "ls -al"
Next you open up neovim and run this command to install the plugins
> [!important] 
> When running this for the first time it will throw a error
```
:PackerInstall
```

To fix the error that tree-sitter gives when installing you have to update with packer\
Once you have updated with packer your neovim setup is ready to go
```
:PackerUpdate
```
### LSP
To install a new LSP pack you use mason to list the available language packs
```
:Mason
```
You can then use "Ctrl + F" to filter between programming languages
to actually install the language you use the command
```
:LspInstall languagepacknamehere
```
or
```
:MasonInstall languagepacknamehere
```
### Updating LSP
To update your LSP packs you run the following command
```
:MasonUpdate
```

### Tree-sitter
To install a new tree-sitter syntax highlight pack you use the following command
```
:TSInstall syntaxpackhere
```


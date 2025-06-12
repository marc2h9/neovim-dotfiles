![](images/neovim.png) 
# My current Neovim dotfiles!
This is a repo that contains my current neovim config files<br>

![GitHub commit activity](https://img.shields.io/github/commit-activity/w/marc2h9/neovim-dotfiles) ![GitHub last commit](https://img.shields.io/github/last-commit/marc2h9/neovim-dotfiles) ![GitHub Created At](https://img.shields.io/github/created-at/marc2h9/neovim-dotfiles)

![](images/nvimconfigexample.png)

## Plugins

    * LuaSnip
    * cmp-buffer
    * cmp-cmdline
    * cmp-git
    * cmp-nvim-lsp
    * cmp-path
    * cmp_luasnip
    * lspkind.nvim
    * lualine.nvim
    * mason-lspconfig.nvim
    * mason.nvim
    * nvim-cmp
    * nvim-lspconfig
    * nvim-treesitter
    * nvim-web-devicons
    * onedark.nvim
    * packer.nvim
    * plenary.nvim
    * telescope.nvim

## Installation Instructions

1. **Prerequisites:**
    * [Neovim v0.11.2 or higher](https://github.com/neovim/neovim)
    * [packer](https://github.com/wbthomason/packer.nvim)
    * [curl](https://github.com/curl/curl)
    * [tar](https://www.gnu.org/software/tar/)
    * [node](https://github.com/nodejs/node)
    * [npm](https://github.com/npm/cli)
    * [tree-sitter](https://github.com/tree-sitter/tree-sitter)
    * [ripgrep](https://github.com/BurntSushi/ripgrep)
2. **Installation:**
    * Clone the repository: `git clone https://github.com/marc2h9/neovim-dotfiles`
    * Make sure there is **no nvim directory** in the `~/.config` directory
    * Make a symbolic link between the **nvim directory and ~/.config** run:
    * `ln -s path/to/dotfiles/nvim/ ~/.config/`
    * Start up neovim and run `:PackerInstall` **You will get a intended error when ran**
    * run `:PackerUpdate` to resolve the error
    * Enjoy!

## License
This Repo is under the [MIT](https://github.com/marc2h9/neovim-dotfiles/blob/main/LICENSE) License

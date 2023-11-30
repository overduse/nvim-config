# neovim config V2.0

## New Feature

**What's new**

- More Lazy-like config file structure.
- More elegent plugins management.
- Easier to Maintain config.


## Requirements

- [Neovim 0.9+](https://github.com/neovim/neovim/releases/)
- [Nerd Fonts](https://www.nerdfonts.com/font-downloads)
- [BurntSushi/ripgrep](https://github.com/BurntSushi/ripgrep)
- [junegunn/fzf](https://github.com/junegunn/fzf)
- [sharkdp/fd](https://github.com/sharkdp/fd)
- [jesseduffield/lazygit](https://github.com/jesseduffield/lazygit)
- [npm](https://github.com/npm/cli)

## Installation

```shell
# for Linux/Unix user
git clone https://github.com/overduse/nvim-config.git ~/.config/ # github cli is also useable
cd ~/.config/
mv ./nvim-config ./nvim
nvim
```

## files structure

```
tree .
.
├── README.md
├── init.lua
├── lazy-lock.json
└── lua
    ├── config
    │   ├── base.lua
    │   └── keymaps.lua
    ├── lazy_nvim.lua
    └── plugins
        ├── alpha.lua
        ├── cmp.lua
        ├── lsp.lua
        ├── scheme.lua
        ├── telescope.lua
        ├── treesitter.lua
        ├── ui.lua
        └── utils.lua

3 directories, 14 files
```

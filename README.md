# My Vim Configuration

This repository contains my personal Vim configuration (`.vimrc`) with a curated set of plugins and customizations designed for an efficient, modern, and visually appealing coding experience.

---

## Features

- **Plugin Manager:** Uses [vim-plug](https://github.com/junegunn/vim-plug) for easy plugin management.
- **File Explorer:** [NERDTree](https://github.com/preservim/nerdtree) for quick file navigation.
- **Commenting:** [vim-commentary](https://github.com/tpope/vim-commentary) with custom `cc` mapping for easy toggling of comments.
- **Surround Editing:** [vim-surround](https://github.com/tpope/vim-surround) for manipulating surrounding characters like quotes, brackets, and tags.
- **Git Integration:** [vim-fugitive](https://github.com/tpope/vim-fugitive) and [gitsigns.nvim](https://github.com/lewis6991/gitsigns.nvim) for Git commands and inline git diff signs.
- **Syntax Checking:** [syntastic](https://github.com/vim-syntastic/syntastic) for on-save syntax error checking with clear error/warning symbols.
- **AI Assistance:** [GitHub Copilot](https://github.com/github/copilot.vim) integration for AI-powered code completion.
- **Smooth Scrolling:** [vim-smooth-scroll](https://github.com/terryma/vim-smooth-scroll) for a better navigation experience.
- **YAML Support:** Syntax highlighting and indentation for YAML files.
- **Terminal Integration:** [neoterm](https://github.com/kassio/neoterm) for running terminals inside Vim.
- **Completion Engine:** [coc.nvim](https://github.com/neoclide/coc.nvim) for powerful autocompletion and language server protocol (LSP) support.
- **Color Schemes:** Includes [Nord](https://github.com/nordtheme/vim), GitHub theme, and Greenvision with vivid color customizations.
- **Custom Key Mappings:**  
  - `cc` toggles comments (normal and visual mode)  
  - `<leader>ft` toggles NERDTree  
  - Alt + arrow keys to navigate windows  
  - Smooth scrolling with Shift + arrow keys  
  - And more for efficient window and terminal management.

---

## Installation

### Prerequisites

- Vim 8.0+ or Neovim with support for `termguicolors` and Python 3.
- [vim-plug](https://github.com/junegunn/vim-plug) installed for plugin management.

### Steps

1. **Clone this repository:**

git clone https://github.com/yourusername/vim-config.git ~/.vim-config


2. **Create symlinks:**

ln -s ~/.vim-config/.vimrc ~/.vimrc
ln -s ~/.vim-config/.vim ~/.vim


3. **Install plugins:**

Open Vim and run:
:PlugInstall


4. **Enjoy your enhanced Vim setup!**

---

## Usage Highlights

- **Toggle file explorer:** Press `<space> + f + t` to open/close NERDTree.
- **Comment lines:** Use `cc` in normal mode to toggle comment on the current line or with a motion (e.g., `cc3j` comments current line + 3 lines).
- **Surround text:** Use `ys`, `ds`, and `cs` commands from vim-surround to add, delete, or change surrounding characters.
- **Git integration:** Use `:Gstatus`, `:Gdiff`, and other commands from vim-fugitive.
- **Smooth scrolling:** Use Shift + arrow keys for smooth vertical and horizontal scrolling.
- **Terminal mode:** Press `Ctrl+n` twice to exit terminal mode inside Neoterm.

---

## Customizations

- **Leader key:** Set to space for ergonomic mappings.
- **True color support:** Enabled for vivid and consistent color schemes.
- **Vivid Nord colorscheme:** Customized for darker backgrounds and brighter accents.
- **Clipboard integration:** Uses system clipboard for easy copy-paste.

---

## Recommended Optional Plugins

You can uncomment and add these plugins for enhanced functionality:

- [fzf](https://github.com/junegunn/fzf) and [fzf.vim](https://github.com/junegunn/fzf.vim) - Fuzzy finder for files and buffers.
- [lualine.nvim](https://github.com/nvim-lualine/lualine.nvim) - Status line with Git and LSP info.
- [nvim-lspconfig](https://github.com/neovim/nvim-lspconfig) - Language Server Protocol support.
- [nvim-cmp](https://github.com/hrsh7th/nvim-cmp) - Alternative autocomplete engine.

---

## Contributing

Feel free to open issues or submit pull requests to improve this configuration!

---

## Acknowledgements

Thanks to the authors and maintainers of all the wonderful Vim plugins included in this configuration.

---

*Happy Vimming!* 🎉

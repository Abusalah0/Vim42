
# 42Amman Vim Configuration

> ⚙️ A customized Vim setup designed for efficient development at Ecole 42 and beyond, developed by students, with full integration for Norminette, Git, snippets, fuzzy search, smooth scrolling, and more.

```
===========================================================
██████      ██████     ██████████████████████████
██████      ██████     ██████████████████████████
██████      ██████     ██████              ██████
██████      ██████     ██████              ██████
██████      ██████                         ██████
██████      ██████                         ██████
██████      ██████     Amman               ██████
██████████████████                         ██████
██████████████████       ████████████████████████
██████████████████       ████████████████████████
            ██████       ██████
            ██████       ████████████████████████
            ██████       ████████████████████████
```

---

## 📦 Plugin Manager: Vim-Plug

This configuration uses [vim-plug](https://github.com/junegunn/vim-plug) for plugin management. Plugins are installed in `~/.vim/plugged`.

### Install `vim-plug` (if not installed):
```bash
curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
     https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
```

---

## 🔌 Included Plugins

| Category          | Plugins |
|-------------------|---------|
| **File Explorer** | `preservim/nerdtree` |
| **Fuzzy Finder**  | `junegunn/fzf`, `junegunn/fzf.vim` |
| **Commenting**    | `tpope/vim-commentary` |
| **Start Screen**  | `mhinz/vim-startify` |
| **Brackets**      | `jiangmiao/auto-pairs` |
| **Git Tools**     | `tpope/vim-fugitive`, `lewis6991/gitsigns.nvim` |
| **Linting**       | `vim-syntastic/syntastic` |
| **AI Coding**     | `github/copilot.vim` |
| **Scrolling**     | `terryma/vim-smooth-scroll` |
| **YAML Support**  | `stephpy/vim-yaml` |
| **Terminal**      | `kassio/neoterm` |
| **Themes**        | `nordtheme/vim`, `akiicat/vim-github-theme`, `greenvision` |
| **Completion**    | `neoclide/coc.nvim` |
| **42 Norms**      | `alexandregv/norminette-vim` |

---

## 🧠 Key Mappings

| Mode | Keys                  | Action                                      |
|------|------------------------|---------------------------------------------|
| Normal | `<leader>ft`         | Toggle NERDTree                             |
| Normal | `<leader><f>`        | Open FZF file search                        |
| Normal | `cc`                 | Comment/uncomment line                      |
| Visual | `cc`                | Comment/uncomment selected lines            |
| Normal | `<A-Left>`           | Move to left window                         |
| Normal | `<A-Right>`          | Move to right window                        |
| Normal | `<A-Up>`             | Move to upper window                        |
| Normal | `<A-Down>`           | Move to lower window                        |
| Normal | `<leader>sw`         | Swap windows                                |
| Terminal | `<C-n><C-n>`       | Escape terminal mode                        |
| Normal | `<S-Down>`           | Smooth scroll down                          |
| Normal | `<S-Up>`             | Smooth scroll up                            |
| Normal | `<S-Right>`          | Scroll right by 5 characters                |
| Normal | `<S-Left>`           | Scroll left by 5 characters                 |
| Normal | `<leader>nn`         | Run Norminette on current file              |

> Note: `<leader>` is the spacebar in this config.

---

## 🧪 42 Norminette Integration

- Runs both `norminette` and `gcc` via Syntastic.
- Errors shown on file open.
- Location list auto-populated.

To run Norminette manually:
```vim
<leader>nn
```

---

## 🎨 Theme: Nord (Customized)

Uses the `nord` colorscheme with overridden highlights for vivid C development colors. Requires `termguicolors`.

---

## ✅ Installation

1. Save the Vim configuration in `~/.vimrc`.
2. Open Vim and run:
```vim
:PlugInstall
```
3. Done!

---

## 🧰 Recommended Tools

- [`norminette`](https://github.com/42School/norminette)
- `gcc`, `ctags`, `ripgrep`

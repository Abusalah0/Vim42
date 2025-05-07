" ============================
" Plugin Manager Initialization
" ============================
call plug#begin('~/.vim/plugged')

" File explorer
Plug 'preservim/nerdtree'

" Commenting utility CC anything
Plug 'tpope/vim-commentary'
nmap cc <Plug>Commentary
xmap cc <Plug>Commentary

" Surround text objects easily (quotes, brackets, etc.)
Plug 'tpope/vim-surround'

" Git integration
Plug 'tpope/vim-fugitive'

" Git signs in gutter (shows added/removed/changed lines)
Plug 'lewis6991/gitsigns.nvim'

" Bugs Check
Plug 'vim-syntastic/syntastic' 
let g:syntastic_always_populate_loc_list = 1   " Always show errors in location list
let g:syntastic_check_on_open = 1              " Check on file open
let g:syntastic_check_on_wq = 0                " Don't check on quit/write-quit
let g:syntastic_error_symbol = "✗"
let g:syntastic_warning_symbol = "⚠"

" GitHub Copilot AI assistant
Plug 'github/copilot.vim'

" Smooth scrolling for better navigation experience
Plug 'terryma/vim-smooth-scroll'

" YAML syntax support
Plug 'stephpy/vim-yaml'

" Terminal integration inside Vim
Plug 'kassio/neoterm'

" Color schemes
Plug 'akiicat/vim-github-theme'
Plug 'vim-scripts/greenvision'
Plug 'nordtheme/vim'

" OPTIONAL: Status line (uncomment if you want a status bar)
" Plug 'vim-airline/vim-airline'

" Essential completion plugin (for better completion experience)
Plug 'neoclide/coc.nvim', {'branch': 'release'}

call plug#end()

" ============================
" General Settings
" ============================

" Use space as the leader key for custom mappings
let mapleader = " "

" Enable syntax highlighting and filetype detection
syntax on
filetype plugin indent on

" Enable true color support for better color schemes
if has('termguicolors')
  set termguicolors
endif

" Set completion options for better popup menu behavior
set completeopt=menuone,noinsert,noselect

" Enable line numbers and relative line numbers for easier navigation
set number
set relativenumber

" Enable mouse support in all modes (optional but handy)
set mouse=a

" Highlight current line for better cursor tracking
set cursorline

" Enable clipboard to use system clipboard (copy/paste)
set clipboard=unnamedplus

" ============================
" Key Mappings
" ============================

" Toggle NERDTree with <leader>ft (space + f + t)
nnoremap <leader>ft :NERDTreeToggle<CR>

" Window navigation with Alt + arrow keys
nnoremap <A-Left>  <C-w>h
nnoremap <A-Right> <C-w>l
nnoremap <A-Up>    <C-w>k
nnoremap <A-Down>  <C-w>j

" Swap windows with <leader>sw (space + s + w)
nnoremap <leader>sw <C-w>r

" Escape terminal mode with Ctrl+n twice
tnoremap <C-n><C-n> <C-\><C-n>

" Smooth scrolling mappings (Shift + arrows)
noremap <silent> <S-Down>  :call smooth_scroll#down(5, 5, 2)<CR>
noremap <silent> <S-Up>    :call smooth_scroll#up(5, 5, 2)<CR>
noremap <silent> <S-Right> 5zl
noremap <silent> <S-Left>  5zh

" ============================
" Plugin-specific Settings
" ============================

" Close NERDTree automatically when opening a file
let g:NERDTreeQuitOnOpen = 1

" Enable vim-smooth-scroll plugin defaults (optional tuning)
let g:smooth_scroll_hide_cursor = 1

" ============================
" Colorscheme and Appearance
" ============================

" Load Nord colorscheme
colorscheme nord

" Override Nord colors for a vivid, darker theme

" Background and foreground
highlight Normal       guibg=#1F2430 guifg=#E6EBF5
highlight LineNr       guifg=#40506B guibg=#1F2430
highlight CursorLine   guibg=#2B3345

" Syntax highlighting overrides (vivid colors)
highlight Comment      guifg=#6B9DD9 gui=italic       " Softer blue for comments
highlight Constant     guifg=#7FD97F                  " Vivid green for constants
highlight String       guifg=#7FD97F                  " Vivid green for strings
highlight Identifier   guifg=#7FD97F                  " Vivid green for variables
highlight Keyword      guifg=#4C72B8 gui=bold         " Dark blue for keywords
highlight Function     guifg=#7FD6D1                  " Vivid cyan for functions
highlight Statement    guifg=#4C72B8 gui=bold         " Dark blue for statements
highlight Type         guifg=#C87FC7                  " Vivid purple for types
highlight Special      guifg=#E05172                  " Vivid pink for special chars
highlight Error        guifg=#E05172                  " Vivid pink for errors
highlight WarningMsg   guifg=#E68B5C                  " Orange for warnings
highlight Todo         guifg=#F0D87D gui=bold         " Bright yellow for TODOs

" Cursor and search highlights
highlight CursorLineNr guifg=#F7FAFD guibg=#2B3345 gui=bold
highlight Search       guibg=#7FD6D1 guifg=#1F2430
highlight IncSearch    guibg=#E05172 guifg=#1F2430

" Visual selection
highlight Visual       guibg=#40506B guifg=NONE

" UI separators and menus
highlight VertSplit    guifg=#40506B guibg=#1F2430
highlight StatusLine   guibg=#2B3345 guifg=#F7FAFD
highlight Pmenu        guibg=#2B3345 guifg=#E6EBF5
highlight PmenuSel     guibg=#7FD6D1 guifg=#1F2430 gui=bold

" ============================
" Recommended Additional Plugins (Optional)
" ============================

" Fuzzy finder for files, buffers, etc. (requires ripgrep and fd)
" Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
" Plug 'junegunn/fzf.vim'

" Status line with git and LSP info (alternative to airline)
" Plug 'nvim-lualine/lualine.nvim'

" Language Server Protocol support for IDE-like features
" Plug 'neovim/nvim-lspconfig'

" Autocomplete engine (if you want alternatives to coc.nvim)
" Plug 'hrsh7th/nvim-cmp'

" ============================
" End of vimrc
" ============================


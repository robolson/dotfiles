" TODO: research more things from https://github.com/achiurizo/dotfiles/blob/master/vimrc
" Also from https://github.com/jdhao/nvim-config

call plug#begin()
" The default plugin directory will be as follows:
"   - Vim (Linux/macOS): '~/.vim/plugged'
"   - Neovim (Linux/macOS/Windows): stdpath('data') . '/plugged'
"   -               stdpath('data') == .local/share/nvim/plugged
" You can specify a custom plugin directory by passing it as the argument
"   - e.g. `call plug#begin('~/.vim/plugged')`
"   - Avoid using standard Vim directory names like 'plugin'

" Make sure you use single quotes

Plug 'tpope/vim-sensible'		" sensible vim defaults
Plug 'tpope/vim-fugitive'		" Git integration
Plug 'mhinz/vim-startify'		" Fancy start screen
Plug 'machakann/vim-sandwich'		" add/delete/replace surroundings
Plug 'preservim/nerdcommenter'		" intensely orgasmic commenting
Plug 'lewis6991/gitsigns.nvim'          " fancy git gutter plugin

" colorscheme plugins
Plug 'ayu-theme/ayu-vim'
Plug 'dracula/vim', { 'as': 'dracula' }	" good dark theme for neovim


" VS Code inspired code completion engine
"Plug 'neoclide/coc.nvim', {'branch': 'release'}

call plug#end()

" run sensible first so it doesn't override my settings
runtime! plugin/sensible.vim 

" GUI/LOOK OPTIONS
"
set termguicolors	" enable 24-bit RGB color
set background=dark

let ayucolor="dark"   " possible options: light, mirage, dark
colorscheme ayu

" GENERAL OPTIONS
set number            " Show line numbers

" keyboard shortcuts
let mapleader=","     " Set my leader key to ','
imap jj <Esc>			" jj acts as ESC key
imap kk <Esc>			" kk acts as ESC key

" PLUGIN CONFIGS "

" ### NERD Commenter Config ###
"
" Create default mappings
let g:NERDCreateDefaultMappings = 1

" Add spaces after comment delimiters by default
let g:NERDSpaceDelims = 1

" Allow commenting and inverting empty lines (useful when commenting a region)
let g:NERDCommentEmptyLines = 1

" Enable trimming of trailing whitespace when uncommenting
let g:NERDTrimTrailingWhitespace = 1
"
" ### end NERD Commenter Config ###

" lewis6991/gitsigns.nvim {{{
lua << EOF
  require('gitsigns').setup({})
EOF
" }}}

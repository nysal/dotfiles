syntax on

" Highlight trailing whitespace
highlight ExtraWhitespace ctermbg=red guibg=red
autocmd Syntax * syn match ExtraWhitespace /\s\+$\| \+\ze\t/

set noerrorbells
set tabstop=4 softtabstop=4
set shiftwidth=4
set expandtab
set incsearch
"set hlsearch
set autoindent
set nowrap
set smartcase
"set colorcolumn=80
"highlight ColorColumn ctermbg=0 guibg=lightgrey

if has("autocmd")
  filetype plugin indent on
endif

" Initialize vim-plug plugin system - https://github.com/junegunn/vim-plug
call plug#begin('~/.vim/plugged')

Plug 'morhetz/gruvbox'
Plug 'tpope/vim-fugitive'
Plug 'altercation/vim-colors-solarized'
Plug 'majutsushi/tagbar'
Plug 'preservim/nerdtree'
Plug 'itchyny/lightline.vim'
Plug 'shinchu/lightline-gruvbox.vim'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'nysal/cscope-maps'

call plug#end()

nmap <F8> :TagbarToggle<CR>

" Settings for lightline.vim - https://github.com/itchyny/lightline.vim
set laststatus=2
set noshowmode " removes default mode indication
set ttimeout ttimeoutlen=50 " removes delay of switching modes
if !has('gui_running')
  set t_Co=256
endif
" Set lightline gruvbox colorscheme
let g:lightline = {}
let g:lightline.colorscheme = 'gruvbox'

" gruvbox color settings
colorscheme gruvbox
set background=dark    " Setting dark mode
"set background=light   " Setting light mode

" Workaround for >4;2m character printed on screen
" See - https://stackoverflow.com/questions/62148994/strange-character-since-last-update-42m-in-vim
let &t_TI = ""
let &t_TE = ""

" Use gruvbox colorscheme in fzf
let g:fzf_colors = {
      \ 'fg':      ['fg', 'GruvboxFg1'],
      \ 'bg':      ['fg', 'GruvboxBg0'],
      \ 'hl':      ['fg', 'GruvboxYellow'],
      \ 'fg+':     ['fg', 'GruvboxFg1'],
      \ 'bg+':     ['fg', 'GruvboxBg1'],
      \ 'hl+':     ['fg', 'GruvboxYellow'],
      \ 'info':    ['fg', 'GruvboxBlue'],
      \ 'prompt':  ['fg', 'GruvboxFg4'],
      \ 'pointer': ['fg', 'GruvboxBlue'],
      \ 'marker':  ['fg', 'GruvboxOrange'],
      \ 'spinner': ['fg', 'GruvboxYellow'],
      \ 'header':  ['fg', 'GruvboxBg3']
      \ }

"if has('gui_running')
"  set background=light
"  colorscheme solarized
"endif

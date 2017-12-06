set nocompatible              
filetype off                 
syntax enable
set incsearch
set rtp+=~/.vim/bundle/Vundle.vim
set rtp+=/usr/local/opt/fzf
set backspace=2
set tabstop=4
set shiftwidth=4
set expandtab
set smarttab
set statusline=%{fugitive#statusline()}
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'
Plugin 'prettier/prettier'
Plugin 'sbdchd/neoformat'
Plugin 'mhartington/oceanic-next'
Plugin 'mxw/vim-jsx'
Plugin 'w0rp/ale'
Plugin 'tpope/vim-fugitive'
Plugin 'othree/yajs.vim'
Plugin 'othree/html5.vim'
Plugin 'HerringtonDarkholme/yats.vim'
Plugin 'junegunn/fzf.vim'

call vundle#end()
filetype plugin indent on

nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>
inoremap jj <ESC>
nmap <leader><tab> <plug>(fzf-maps-n)
xmap <leader><tab> <plug>(fzf-maps-x)
omap <leader><tab> <plug>(fzf-maps-o)
nnoremap <silent> <expr> <Leader><Leader> (expand('%') =~ 'NERD_tree' ? "\<c-w>\<c-w>" : '').":Files\<cr>"
nnoremap <silent> <Leader>c :Colors<CR>
nnoremap <silent> <Leader>b :Buffers<CR>
nnoremap <silent> <Leader>l :Lines<CR>

let g:netrw_banner = 0
let g:netrw_liststyle = 3
let g:javascript_plugin_flow = 1
let g:jsx_ext_required = 0
let g:oceanic_next_terminal_bold = 1
let g:oceanic_next_terminal_italic = 1

colorscheme OceanicNext

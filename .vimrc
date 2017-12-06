filetype off
set hidden
set nocompatible
set rtp+=~/.vim/bundle/Vundle.vim
set rtp+=/usr/local/opt/fzf
set tabstop=4
set shiftwidth=4
set expandtab
set number
set cc=+1
set encoding=utf-8
set statusline=%{fugitive#statusline()}
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'
Plugin 'tpope/vim-sensible'
Plugin 'prettier/prettier'
Plugin 'sbdchd/neoformat'
Plugin 'mhartington/oceanic-next'
Plugin 'pangloss/vim-javascript'
Plugin 'mxw/vim-jsx'
Plugin 'w0rp/ale'
Plugin 'tpope/vim-fugitive'
Plugin 'othree/yajs.vim'
Plugin 'othree/es.next.syntax.vim'
Plugin 'othree/html5.vim'
Plugin 'HerringtonDarkholme/yats.vim'
Plugin 'junegunn/fzf.vim'
Plugin 'autozimu/LanguageClient-neovim'
Plugin 'Shougo/echodoc.vim'
Plugin 'moll/vim-node'
Plugin 'vimlab/split-term.vim'
Plugin 'reasonml-editor/vim-reason-plus'

call vundle#end()

nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>
inoremap jj <ESC>
nmap <leader><tab> <plug>(fzf-maps-n)
xmap <leader><tab> <plug>(fzf-maps-x)
omap <leader><tab> <plug>(fzf-maps-o)
nnoremap <silent> <Leader><Leader> :Files<cr>
nnoremap <silent> <Leader>c :Colors<CR>
nnoremap <silent> <Leader>b :Buffers<CR>
nnoremap <silent> <Leader>l :Lines<CR>
nnoremap <silent> <cr> :call LanguageClient_textDocument_hover()<CR>
nnoremap <silent> gd :call LanguageClient_textDocument_definition()<CR>
nnoremap <silent> <F2> :call LanguageClient_textDocument_rename()<CR>

let g:LanguageClient_serverCommands = {
    \ 'reason': ['ocaml-language-server', '--stdio'],
    \ 'ocaml': ['ocaml-language-server', '--stdio'],
    \ }
let g:LanguageClient_autoStart = 1
let g:netrw_banner = 0
let g:netrw_liststyle = 3
let g:javascript_plugin_flow = 1
let g:jsx_ext_required = 0
let g:oceanic_next_terminal_bold = 1
let g:oceanic_next_terminal_italic = 1

colorscheme OceanicNext

call plug#begin('~/.local/share/nvim/plugged')

Plug 'VundleVim/Vundle.vim'
Plug 'tpope/vim-sensible'
Plug 'prettier/prettier'
Plug 'sbdchd/neoformat'
Plug 'mhartington/oceanic-next'
Plug 'pangloss/vim-javascript'
Plug 'mxw/vim-jsx'
Plug 'w0rp/ale'
Plug 'tpope/vim-fugitive'
Plug 'othree/yajs.vim'
Plug 'othree/es.next.syntax.vim'
Plug 'othree/html5.vim'
Plug 'HerringtonDarkholme/yats.vim'
Plug 'junegunn/fzf.vim'
Plug 'autozimu/LanguageClient-neovim'
Plug 'Shougo/echodoc.vim'
Plug 'moll/vim-node'
Plug 'vimlab/split-term.vim'
Plug 'reasonml-editor/vim-reason-plus'
Plug 'roxma/nvim-completion-manager'
Plug 'vim-airline/vim-airline'

call plug#end()

syntax enable
set hidden
set rtp+=~/.vim/bundle/Vundle.vim
set rtp+=/usr/local/opt/fzf
set tabstop=4
set shiftwidth=4
set expandtab
set number
set cc=+1
set encoding=utf-8

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
nnoremap <silent> gf :call LanguageClient_textDocument_formatting()<CR>
nnoremap <silent> <F2> :call LanguageClient_textDocument_rename()<CR>
autocmd FileType javascript nnoremap <buffer>
  \ <leader>o :call LanguageClient_textDocument_documentSymbol()<cr>

let g:LanguageClient_serverCommands = {
    \ 'reason': ['ocaml-language-server', '--stdio'],
    \ 'ocaml': ['ocaml-language-server', '--stdio'],
    \ }
let g:LanguageClient_autoStart = 1
let g:netrw_banner = 0
let g:netrw_liststyle = 3
let g:javascript_Plug_flow = 1
let g:jsx_ext_required = 0

colorscheme OceanicNext

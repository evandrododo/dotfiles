set nocompatible   			        " latest vim settings
syntax enable

so ~/.vim/plugins.vim

"-------------General Settings--------------"
set backspace=indent,eol,start                  "Make backspace behave like every other editor.
let mapleader = ',' 			   	"The default leader is \, but a comma is much better.
set number					"Let's activate line numbers.

" size of a hard tabstop
set tabstop=4
" always uses spaces instead of tab characters
set expandtab
" size of an "indent"
set shiftwidth=4

" Anda pelas linhas visiveis ao subir e descer
nnoremap j gj
nnoremap k gk

"-------------Visual--------------"
colorscheme dracula
set guifont=Inconsolata\ Nerd\ Font\ Mono\ 13
set linespace=8   			        "gvim-specific line-height.

set guioptions-=l                               "Disable Gui scrollbars.
set guioptions-=T				"Disable toolbar
set guioptions-=L				"Remove left scroll
set guioptions-=r				"remove right scroll
set guioptions-=m				"Remove menu
set guioptions-=e				"Disable gui tabs

hi vertsplit guibg='#242930' guifg='#242930' 
"-------------Search--------------"
set hlsearch
set incsearch


"We'll set simpler mappings to switch between splits.
nmap <C-J> <C-W><C-J>
nmap <C-K> <C-W><C-K>
nmap <C-H> <C-W><C-H>
nmap <C-L> <C-W><C-L>


"-------------Mappings--------------"

"Add simple highlight removal.
nmap <Leader><space> :nohlsearch<cr>

"Make NERDTree easier to toggle
nmap <leader>n :NERDTreeToggle<CR>

nmap <C-R> :CtrlPBufTag<cr>
nmap <C-E> :CtrlPMRUFiles<cr>

"Move pelos buffers
noremap <leader>q :bp<CR>
noremap <leader>w :bn<CR>

function! SwitchBuffer()
   b#
endfunction
nmap <Tab> :call SwitchBuffer()<CR>

"Quickly browse to any tag/symbol in the project.
"Tip: run ctags -R to regenerated the index.
nmap <Leader>f :tag<space>

" map c-x and c-v to work as they do in windows, only in insert mode
vm <c-x> "+x
vm <c-c> "+y
cno <c-v> <c-r>+
exe 'ino <script> <C-V>' paste#paste_cmd['i']

set clipboard=unnamedplus

" save with ctrl+s
nmap <c-s> :w<CR>
imap <c-s> <Esc>:w<CR>a


"-------------Plugins--------------"
"/
"/ CtrlP
"/
let g:ctrlp_custom_ignore = 'node_modules\|DS_Store\|git'
let g:ctrlp_match_window = 'top,order:ttb,min:1,max:10,results:30'

"/
"/ NERDTree
"/
"Ignore algumas coisas
let NERDTreeHijackNetrw = 0
let NERDTreeIgnore=['\.git', '\~$', '\.swp']

"/
"/  Greplace.vim
"/
" set grepprg = ag

"Abrindo NERDTree por default
autocmd VimEnter * NERDTree
autocmd VimEnter * wincmd p



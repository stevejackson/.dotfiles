" This .vimrc has the following system dependencies:
" - the_silver_searcher (Ag)

" Leader
let mapleader="\<Space>"

set nojoinspaces  " Use one space, not two, after punctuation.
set backspace=2   " Backspace deletes like most programs in insert mode
set nobackup
set nowritebackup
set noswapfile    " http://robots.thoughtbot.com/post/18739402579/global-gitignore#comment-458413287
set history=50
set ruler         " show the cursor position all the time
set showcmd       " display incomplete commands
set incsearch     " do incremental searching
set laststatus=2  " Always display the status line
set autowrite     " Automatically :write before running commands
set number

set nocompatible      " We're running Vim, not Vi!
syntax on             " Enable syntax highlighting
filetype on           " Enable filetype detection
filetype indent on    " Enable filetype-specific indenting
filetype plugin on    " Enable filetype-specific plugins

" Softtabs, 2 spaces
set tabstop=2
set shiftwidth=2
set shiftround
set expandtab

""" BEGIN: Plugin installation

call plug#begin('~/.vim/plugged')

Plug 'scrooloose/nerdtree' " NERDTree: Traditional-style file navigation pane
Plug 'scrooloose/syntastic'
Plug 'tpope/vim-surround'

Plug 'easymotion/vim-easymotion' " Easymotion 
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' } " Fuzzy file finder
Plug 'junegunn/fzf.vim' " Fuzzy file finder
Plug 'rking/ag.vim' " Silver searcher: grep replacement

" Syntax improvement
Plug 'vim-ruby/vim-ruby' " 
Plug 'othree/yajs.vim' " Javascript syntax
Plug 'tpope/vim-endwise' " syntax improvement for ruby begin/end etc
Plug 'luochen1990/rainbow' " In HTML files, color lines based on their nesting level

Plug 'tpope/vim-rails' " Rails helpers

" Plug 'valloric/youcompleteme' " Autocomplete

Plug 'morhetz/gruvbox' " Color scheme

Plug 'vim-airline/vim-airline'

" Add plugins to &runtimepath
call plug#end()

" Notes:
" ------
" Run the following commands while editing ~/.vimrc to install/update the plugins.
"
" Install vim-plug, then:
" :so %
" :PlugInstall
" :PlugUpdate
"
"""" END: Plugin installation




"""" BEGIN: Plugin Configuration

"" NERDTree
map <Leader>n :NERDTreeToggle<CR> 

"" EasyMotion
map s <Plug>(easymotion-s2)

"" fzf.vim
nmap <silent> <leader><tab> :Files<CR>
nnoremap <silent> <leader>. :Lines<CR>


"" rainbow.vim
let g:rainbow_active = 1 "0 if you want to enable it later via :RainbowToggle

"" vim-airline
let g:airline#extensions#tabline#enabled = 1

"" color scheme
colorscheme gruvbox
set bg=dark

"""" END: Plugin Configuration




"""" BEGIN Hotkeys

nnoremap <Leader>w :w<CR> " Save with <Leader>w
nnoremap = <C-^> " Switch back and forth between two files with equals key

nnoremap <Leader>[ :bp<CR> " Previous file in buffer
nnoremap <Leader>] :bn<CR> " Next file in buffer

nnoremap <Leader>e <C-w>w " Switch to next window

"""" END Hotkeys





""" BEGIN Filetypes

autocmd BufNewFile,BufRead *.es6 set filetype=javascript

""" END Filetypes



""" Don't ring bells in terminal when using vim
set noerrorbells visualbell t_vb=
if has('autocmd')
  autocmd GUIEnter * set visualbell t_vb=
endif

" The Silver Searcher
if executable('ag')
  " Use ag over grep
  set grepprg=ag\ --nogroup\ --nocolor
endif


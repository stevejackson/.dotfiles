" Leader
let mapleader="\<Space>"

""" BEGIN: Plugin installation
call plug#begin('~/.vim/plugged')

Plug 'scrooloose/nerdtree'
Plug 'scrooloose/syntastic'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-rails'
Plug 'easymotion/vim-easymotion'
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'

Plug 'othree/yajs.vim'
"Plug 'valloric/youcompleteme'
Plug 'morhetz/gruvbox'


" Add plugins to &runtimepath
call plug#end()

" Notes:
" ------
" Run the following commands while editing ~/.vimrc to install/update the plugins.
"
" :so %
" :PlugInstall
" :PlugUpdate
"""" END: Plugin installation

"""" BEGIN: Plugin Configuration

"" NERDTree
map <Leader>n :NERDTreeToggle<CR> 

"" EasyMotion
map s <Plug>(easymotion-s2)

"" fzf.vim
nmap <leader><tab> :Files<CR>
xmap <leader><tab> :Files<CR>
omap <leader><tab> :Files<CR>

"" color scheme
colorscheme gruvbox
set bg=dark

"""" END: Plugin Configuration

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

filetype on
syntax on

"""" BEGIN Hotkeys

nnoremap <Leader>w :w<CR> " Save with <Leader>w
nnoremap <backspace> <C-^> " Switch back and forth between two files using backspace 

"""" END Hotkeys

""" BEGIN Filetypes

autocmd BufNewFile,BufRead *.es6 set filetype=javascript

""" END Filetypes


syntax enable           " enable syntax processing
set tabstop=2           " number of visual spaces per TAB
set softtabstop=2       " number of spaces in tab when editing
set expandtab           " tabs are spaces
set number              " show line numbers
set relativenumber      " make like numbers follow cursor
set cursorline          " highlight current line 
set showcmd             " show command in bottom bar
filetype indent on      " load filetype-specific indent files
set wildmenu            " visual autocomplete for command menu
set lazyredraw          " redraw only when we need to
set showmatch           " highlight matching [{()}]
set incsearch           " search as characters are entered
set hlsearch            " highlight matches
set foldenable          " enable folding
set foldlevelstart=10   " open most folds by default 
set foldnestmax=10      " 10 nested fold max
set foldmethod=indent   " fold based on indent level
let mapleader=","       " leader is comma
set updatetime=250      " faster update time for vim-gitgutter

" Install and run vim-plug on first run
if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
  \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

call plug#begin('~/.vim/plugged')
Plug 'jiangmiao/auto-pairs'
Plug 'airblade/vim-gitgutter'
call plug#end()


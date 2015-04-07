
" Settings
set nocompatible
set backupdir=~/.vim_backup//
set directory=~/.vim_swp//
set relativenumber
set expandtab
set laststatus=2
set incsearch
set autoindent
set showcmd
set tabstop=2
set shiftwidth=2
set numberwidth=4
set ignorecase
set smartcase
set tags=./tags;
set foldenable
set foldmethod=manual
set mouse=a
set backspace=indent,eol,start
set nowrap
set cursorline

set completeopt=longest,menu
set wildmode=list:longest,list:full
set complete=.,t
set hlsearch


" Set up NeoBundle
set rtp+=~/.vim/bundle/neobundle.vim/
call neobundle#begin(expand('~/.vim/bundle/'))

NeoBundleFetch "Shougo/neobundle.vim"

" My bundles
NeoBundle 'Shougo/vimproc', {
      \ 'build' : {
      \     'windows' : 'make -f make_mingw32.mak',
      \     'cygwin' : 'make -f make_cygwin.mak',
      \     'mac' : 'make -f make_mac.mak',
      \     'unix' : 'make -f make_unix.mak',
      \    },
      \ }

NeoBundle "Lokaltog/vim-distinguished"
NeoBundle "bling/vim-airline"
NeoBundle "flazz/vim-colorschemes"
NeoBundle "tpope/vim-fugitive"
NeoBundle "tpope/vim-git"
NeoBundle "tpope/vim-surround"
NeoBundle "pangloss/vim-javascript"
NeoBundle "garbas/vim-snipmate"
NeoBundle "kien/ctrlp.vim"
NeoBundle "mileszs/ack.vim"
NeoBundle "wojtekgalaj/vim-snippets"
NeoBundle "burnettk/vim-angular"
NeoBundle "joequery/Stupid-EasyMotion"
NeoBundle "rizzatti/dash.vim"
NeoBundle "sickill/vim-pasta"
NeoBundle "ervandew/supertab"
NeoBundle "vim-scripts/ZoomWin"
NeoBundle "MarcWeber/vim-addon-mw-utils"
NeoBundle "scrooloose/nerdtree"
NeoBundle "tomtom/tlib_vim"
NeoBundle "bling/vim-bufferline"
NeoBundle "Raimondi/delimitMate"

call neobundle#end()

filetyp plugin indent on

NeoBundleCheck

colorscheme distinguished

syntax on

highlight ColorColumn ctermbg=lightgray

" Automatically load .vimrc source when saved
autocmd BufWritePost .vimrc source $MYVIMRC

" Functions
function! NumberToggle()
  if(&relativenumber == 1)
    set number
  else
    set relativenumber
  endif
endfunc

" Key Bindings
inoremap kj <Esc>
nnoremap <Leader>n :call NumberToggle()<cr>

" Clean trailing whitespace
au BufWritePre * :%s/\s\+$//e

" Switch buffers
nnoremap <C-n> :bn<cr>
nnoremap <C-b> :bp<cr>
nnoremap <C-d> :bd<cr>


" Split windows
nnoremap <Leader>s :sp<cr><C-w><C-w>
nnoremap <Leader>v :vsp<cr><C-w><C-w>

" Easily switch between windows
nnoremap <silent> <c-k> :wincmd k<cr>
nnoremap <silent> <c-j> :wincmd j<cr>
nnoremap <silent> <c-h> :wincmd h<cr>
nnoremap <silent> <c-l> :wincmd l<cr>

" Exit insert mode and write file
inoremap <leader>w <Esc> :w<cr>
nnoremap <leader>w :w<cr>

" NERDTree
let NERDTreeShowHidden=1
nnoremap <leader><Tab> :NERDTreeToggle<cr>



" CtrlP
" 'c' The directory of current file
" 'r' nearest ancestor with .git
let g:ctrlp_working_path_mode='r'

" NerdTree
set encoding=utf-8

" VimPasta
let g:pasta_enabled_filetypes = ['javascript', 'css', 'sh']


set runtimepath+=~/.vim_runtime

source ~/.vim_runtime/vimrcs/basic.vim
source ~/.vim_runtime/vimrcs/filetypes.vim
source ~/.vim_runtime/vimrcs/plugins_config.vim
source ~/.vim_runtime/vimrcs/extended.vim

try
source ~/.vim_runtime/my_configs.vim
catch
endtry
set nocompatible              " be iMproved, required
filetype off                  " required

let g:cpp_class_scope_highlight = 1
let g:cpp_experimental_template_highlight = 1

" set the runtime path to include Vundle and initialize
 set rtp+=~/.vim/bundle/Vundle.vim
 call vundle#begin()
 " alternatively, pass a path where Vundle should install plugins
 "call vundle#begin('~/some/path/here')

 " let Vundle manage Vundle, required
Plugin 'NLKNguyen/papercolor-theme'
Plugin 'VundleVim/Vundle.vim'
"Bundle 'Valloric/YouCompleteMe'
Plugin 'Raimondi/delimitMate'
Plugin 'octol/vim-cpp-enhanced-highlight'
Plugin 'flazz/vim-colorschemes'
"Plugin 'pangloss/vim-javascript'
Plugin 'tmhedberg/SimpylFold'
Plugin 'scrooloose/syntastic'
"Plugin 'nvie/vim-flake8'
"Plugin 'jnurmine/Zenburn'
Plugin 'altercation/vim-colors-solarized'
Plugin 'jistr/vim-nerdtree-tabs'
"Plugin 'kien/ctrlp.vim'
"Plugin 'tpope/vim-fugitive'
Plugin 'scrooloose/nerdcommenter'
"Plugin 'vim-scripts/taglist.vim'
"Plugin 'pelodelfuego/vim-swoop'
"Plugin 'wesleyche/SrcExpl'








 " The following are examples of different formats supported.
 " Keep Plugin commands between vundle#begin/end.
 " plugin on GitHub repo
" Plugin 'tpope/vim-fugitive'
" " plugin from http://vim-scripts.org/vim/scripts.html
" Plugin 'L9'
" " Git plugin not hosted on GitHub
" Plugin 'git://git.wincent.com/command-t.git'
" " git repos on your local machine (i.e. when working on your own plugin)
" Plugin 'file:///home/gmarik/path/to/plugin'
" " The sparkup vim script is in a subdirectory of this repo called vim.
" " Pass the path to set the runtimepath properly.
" Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
" " Avoid a name conflict with L9
" Plugin 'user/L9', {'name': 'newL9'}
"
" " All of your Plugins must be added before the following line
 call vundle#end()            " required
 filetype plugin indent on    " required
" " To ignore plugin indent changes, instead use:
" "filetype plugin on
" "
" " Brief help
" " :PluginList       - lists configured plugins
" " :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" " :PluginSearch foo - searches for foo; append `!` to refresh local cache
" " :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
" "
" " see :h vundle for more details or wiki for FAQ
" " Put your non-Plugin stuff after this line
let g:ycm_confirm_extra_conf=0


set number
syntax on
let delimitMate_expand_cr=1
let g:SimpylFold_docstring_preview=1
set splitbelow
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>
nnoremap <space> za
map <F2> :NERDTreeToggle<Enter>
map <F11> :set spell spelllang=en_US<Enter>
set foldmethod=indent
set foldlevel=99
set encoding=utf-8
set clipboard=unnamed

let mapleader = ","
call togglebg#map("<F5>")



if has('gui_running')
    set background=dark
    colorscheme solarized
endif


"python:
let g:ycm_autoclose_preview_window_after_completion=1
map <leader>g  :YcmCompleter GoToDefinitionElseDeclaration<CR>
map <leader>n :noh<Enter>




"buffer:
set switchbuf=usetab,newtab
map ,bt :bufdo tab split<CR>

"autocmd VimEnter * wincmd p
"autocmd VimEnter * :TlistToggle
"autocmd BufWritePost *.cpp :TlistUpdate


set guifont=Consolas:h12
set linespace=3
set background=dark
colorscheme PaperColor

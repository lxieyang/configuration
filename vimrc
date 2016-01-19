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
Plugin 'VundleVim/Vundle.vim'
Bundle 'Valloric/YouCompleteMe'
Plugin 'Raimondi/delimitMate'
Plugin 'octol/vim-cpp-enhanced-highlight'
Plugin 'flazz/vim-colorschemes'
Plugin 'pangloss/vim-javascript'
Plugin 'tmhedberg/SimpylFold'
Plugin 'vim-scripts/indentpython.vim'
Plugin 'scrooloose/syntastic'
Plugin 'nvie/vim-flake8'
Plugin 'jnurmine/Zenburn'
Plugin 'altercation/vim-colors-solarized'
Plugin 'jistr/vim-nerdtree-tabs'
Plugin 'kien/ctrlp.vim'
Plugin 'tpope/vim-fugitive'
Plugin 'scrooloose/nerdcommenter'
Bundle 'fholgado/minibufexpl.vim'








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
let g:clang_user_options='||exit 0'
let g:clang_debug=0
"let g:ycm_global_ycm_extra_conf = '~/.vim/bundle/YouCompleteMe/third_party/ycmd/cpp/ycm/.ycm_extra_conf.py'


set number
syntax on
let delimitMate_expand_cr=1
let g:SimpylFold_docstring_preview=1
set splitbelow
let python_highlight_all=1
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>
nnoremap <space> za
map <F2> :NERDTreeToggle<Enter>
map <F11> :set spell spelllang=en_US<Enter>
map <F12> <Enter>:cd %:p:h<Enter><F11>
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


"python with virtualenv support
py << EOF
import os
import sys
if 'VIRTUAL_ENV' in os.environ:
    project_base_dir = os.environ['VIRTUAL_ENV']
    activate_this = os.path.join(project_base_dir, 'bin/activate_this.py')
    execfile(activate_this, dict(__file__=activate_this))
EOF
let g:pymode_rope_completion = 0
let g:pymode_rope_complete_on_dot = 0


"buffer:
set switchbuf=usetab,newtab

"NERDTree:
autocmd VimEnter * NERDTree
autocmd VimEnter * wincmd p

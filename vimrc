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
"Plugin 'NLKNguyen/papercolor-theme'
Plugin 'VundleVim/Vundle.vim'
Bundle 'Valloric/YouCompleteMe'
Plugin 'Raimondi/delimitMate'
Plugin 'octol/vim-cpp-enhanced-highlight'
"Plugin 'flazz/vim-colorschemes'
Plugin 'pangloss/vim-javascript'
Plugin 'tmhedberg/SimpylFold'
Plugin 'scrooloose/syntastic'
"Plugin 'nvie/vim-flake8'
Plugin 'jnurmine/Zenburn'
Plugin 'altercation/vim-colors-solarized'
Plugin 'jistr/vim-nerdtree-tabs'
Plugin 'kien/ctrlp.vim'
Plugin 'tpope/vim-fugitive'
Plugin 'scrooloose/nerdcommenter'
Plugin 'vim-scripts/taglist.vim'
Plugin 'pelodelfuego/vim-swoop'
Plugin 'wesleyche/SrcExpl'








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
let python_highlight_all=1
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>
nnoremap <space> za
map <F2> :NERDTreeToggle<Enter>
map <F3> :TlistToggle<Enter>
map <F11> :set spell spelllang=en_US<Enter>
map <F12> <Enter>:cd %:p:h<Enter><F11>
set foldmethod=indent
set foldlevel=99
set encoding=utf-8
set clipboard=unnamed

let mapleader = ","
call togglebg#map("<F5>")



if has('gui_running')
    set guifont=monospace\ 12
    set background=dark
    colorscheme solarized
endif


"python:
let g:ycm_autoclose_preview_window_after_completion=1
map <leader>g  :YcmCompleter GoToDefinitionElseDeclaration<CR>
map <leader>n :noh<Enter>


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
map ,bt :bufdo tab split<CR>

"NERDTree:
autocmd VimEnter * wincmd p
autocmd VimEnter * :TlistToggle
autocmd BufWritePost *.cpp :TlistUpdate

" // The switch of the Source Explorer 
nmap <F4> :SrcExplToggle<CR> 

" // Set the height of Source Explorer window 
let g:SrcExpl_winHeight = 5 

" // Set 100 ms for refreshing the Source Explorer 
let g:SrcExpl_refreshTime = 10 

" // Set "Enter" key to jump into the exact definition context 
let g:SrcExpl_jumpKey = "<ENTER>" 

" // Set "Space" key for back from the definition context 
let g:SrcExpl_gobackKey = "<SPACE>" 

" // In order to avoid conflicts, the Source Explorer should know what plugins
" // except itself are using buffers. And you need add their buffer names into
" // below listaccording to the command ":buffers!"
let g:SrcExpl_pluginList = [ 
        \ "__Tag_List__", 
        \ "_NERD_tree_" 
    \ ] 

" // Enable/Disable the local definition searching, and note that this is not 
" // guaranteed to work, the Source Explorer doesn't check the syntax for now. 
" // It only searches for a match with the keyword according to command 'gd' 
let g:SrcExpl_searchLocalDef = 1 

" // Do not let the Source Explorer update the tags file when opening 
let g:SrcExpl_isUpdateTags = 0 

" // Use 'Exuberant Ctags' with '--sort=foldcase -R .' or '-L cscope.files' to 
" // create/update the tags file 
let g:SrcExpl_updateTagsCmd = "ctags --sort=foldcase -R ." 

" // Set "<F10>" key for updating the tags file artificially 
let g:SrcExpl_updateTagsKey = "<F12>" 

" // Set "<F9>" key for displaying the previous definition in the jump list 
let g:SrcExpl_prevDefKey = "<F11>" 

" // Set "<F8>" key for displaying the next definition in the jump list 
let g:SrcExpl_nextDefKey = "<F10>" 

set linespace=6
"set background=dark
"colorscheme PaperColor



let g:cpp_experimental_template_highlight = 1

let g:cpp_class_scope_highlight = 1
let c_no_curly_error=1

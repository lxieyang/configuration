1.install xcode

2.install brew

3.install vim CMake via brew

4.clone this repository to ~ and run ./restore

5.git clone https://github.com/junlong-gao/vimrc.git
sh ~/.vim_runtime/install_awesome_vimrc.sh

6.then the plugin:
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
Launch vim and run :PluginInstall

7.then goto ycm to rebuild compiler:
cd ~/.vim/bundle/YouCompleteMe
./install.py --clang-completer


that's it!!


1.install xcode

2.install brew by:

  $ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

3.install vim CMake via brew by:
  $brew update

  $brew install CMake

  $brew install vim

4.reopen the terminal, and 
  $git clone https://github.com/junlong-gao/vimrc.git ~/.vim_runtime

  $sh ~/.vim_runtime/install_awesome_vimrc.sh
  
5.clone this repository to ~ and cd into configuration, then run 
  $cd ~/configuration
  $./restore


6.then the plugin:

  $git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim

Launch vim and run :PluginInstall

7.then goto ycm to rebuild compiler:

  $cd ~/.vim/bundle/YouCompleteMe

(if asked git submodule clone, just do it : )

  $./install.py --clang-completer


that's it!!

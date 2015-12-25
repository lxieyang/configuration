To Update:

  1. cd into configuration and git pull
  
  2. $./restore
  
  3. launch vim and :PluginInstall

Raw install:

  1. Install xcode

  2. Install brew by:

  $ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

  3. Install vim CMake via brew by:

  $brew update

  $brew install CMake

  $brew install vim

  4. Reopen the terminal, and 

  $git clone https://github.com/junlong-gao/vimrc.git ~/.vim_runtime

  $sh ~/.vim_runtime/install_awesome_vimrc.sh
  
  5. Clone this repository to ~ and cd into configuration, then run 

  $cd ~/configuration
  
  $./restore


  6. Then the plugin:

  $git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim

    Launch vim and run :PluginInstall

  7. Then goto ycm to rebuild compiler:

  $cd ~/.vim/bundle/YouCompleteMe

(if asked git submodule clone, just do it : )

  $./install.py --clang-completer
  
  

  8. For python support:

  $git clone https://github.com/klen/python-mode.git
  
  $ cd python-mode
  
  $ cp -R * ~/.vim

  9. Finally, launch vim and run :PluginInstall
  
that's it!!



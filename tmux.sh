sudo apt-get install tmux
git clone https://github.com/tony/tmux-config.git ~/.tmux

ln -s ~/.tmux/.tmux.conf ~/.tmux.conf

cd ~/.tmux

git submodule init


git submodule update


cd ~/.tmux/vendor/tmux-mem-cpu-load


cmake .

make


sudo make install
Go home:

cd ~







tmux source-file ~/.tmux.conf

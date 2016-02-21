# ~/.bashrc ]] && source ~/.bashrc
export CUDA_HOME=/usr/local/cuda-7.5 
export LD_LIBRARY_PATH=${CUDA_HOME}/lib64 
PATH=${CUDA_HOME}/bin:${PATH} 
export PATH 
export CLICOLOR=1
export LSCOLORS=GxFxCxDxBxegedabagaced
export PATH=/usr/local/bin:$PATH
export PATH=~/utilities:$PATH
export PATH=/usr/local/cuda-7.5/bin:$PATH
export LD_LIBRARY_PATH=/usr/local/cuda-7.5/lib64:$LD_LIBRARY_PATH
export LD_LIBRARY_PATH=/usr/lib/oracle/12.1/client64/lib/${LD_LIBRARY_PATH:+:$LD_LIBRARY_PATH}
export ORACLE_HOME=/usr/lib/oracle/12.1/client64
export PATH=/usr/lib/oracle/12.1/client64/bin:$PATH
export PATH=/usr/lib/oracle/12.1/client64/lib:$PATH

alias ls='ls -GFh'
alias ll='ls -l'
alias lh='ls -ld .?*'
alias clc='clear'
alias ..='cd ..'
alias edit='vim .'
alias cloud='ssh root@104.131.67.203'
alias chrome='google-chrome --enable-webgl --ignore-gpu-blacklist'
alias db='rlwrap sqlplus64 junlonga/54281394@forktail.dsc.umich.edu/COURSEDB'

#caen(){
#    ssh $1@login-course.engin.umich.edu
#}
clone(){
    git clone git@bitbucket.org:jerry1394/$1.git
}
push(){
    git add *
    git add .
    git commit -m "$1"
    git push origin $2
}
commit(){
    git add *.h *.cpp
    git add .
    git add Makefile
    git commit -m "$1"
}
discard(){
    git clean -f
    git reset head --hard
}

function compile {
    g++  main.cpp -o out -g -std=c++11
}

function debug {
    g++  main.cpp -o out -g -std=c++11 -D DEBUG
}
function prompt {
  local BLACK="\[\033[0;30m\]"
  local BLACKBOLD="\[\033[1;30m\]"
  local RED="\[\033[0;31m\]"
  local REDBOLD="\[\033[1;31m\]"
  local GREEN="\[\033[0;32m\]"
  local GREENBOLD="\[\033[1;32m\]"
  local YELLOW="\[\033[0;33m\]"
  local YELLOWBOLD="\[\033[1;33m\]"
  local BLUE="\[\033[0;34m\]"
  local BLUEBOLD="\[\033[1;34m\]"
  local PURPLE="\[\033[0;35m\]"
  local PURPLEBOLD="\[\033[1;35m\]"
  local CYAN="\[\033[0;36m\]"
  local CYANBOLD="\[\033[1;36m\]"
  local WHITE="\[\033[0;37m\]"
  local WHITEBOLD="\[\033[1;37m\]"
  local RESETCOLOR="\[\e[00m\]"

  export PS1="\n$RED\u $PURPLE@ $GREEN\w $RESETCOLOR$GREENBOLD\$(git branch 2> /dev/null)\n $GREEN[\#] → $RESETCOLOR"
  export PS2=" | → $RESETCOLOR"
}

prompt

# Setting PATH for Python 3.4
# The orginal version is saved in .bash_profile.pysave
PATH="/Library/Frameworks/Python.framework/Versions/3.4/bin:${PATH}"
export PATH
export PATH=/Developer/NVIDIA/CUDA-7.0/bin:$PATH
export DYLD_LIBRARY_PATH=/Developer/NVIDIA/CUDA-7.0/lib:$DYLD_LIBRARY_PATH

# Setting PATH for Python 3.5
# The orginal version is saved in .bash_profile.pysave
PATH="/Library/Frameworks/Python.framework/Versions/3.5/bin:${PATH}"
export PATH

# added by Anaconda2 2.4.1 installer
export PATH="/home/junlong/anaconda2/bin:$PATH"

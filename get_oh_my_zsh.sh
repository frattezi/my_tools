#!/bin/bash

# Check and install zsh
if command -v zsh >/dev/null 2>&1 ; then
    echo "zsh found"
    which zsh
    zsh -version
else
    echo "zsh not found, installing zsh"
    apt-get upgrade && sudo apt-get update
    sudo apt-get install zsh
    zsh -version
fi

# Check and install curl
if command -v curl >/dev/null 2>&1 ; then
    echo "curl found"
    which curl
    curl -version
else
    echo "curl not found, installing curl"
    apt-get upgrade && sudo apt-get update
    sudo apt-get install curl
    curl -version
fi

# Installing oh-my-zsh
if command -v oh-my-zsh >/dev/null 2>&1 ; then
    echo "oh-my-zsh found"
    which oh-my-zsh
    oh-my-zsh -version
else
    echo "oh-my-zsh not found, installing oh-my-zsh"
    sh -c "$(curl -fsSL https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
    echo "Setting oh-my-zsh as default shell"
    chsh -s $(which zsh)
    sudo apt-get install fonts-powerline
fi







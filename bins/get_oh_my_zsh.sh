#!/bin/bash

SCRIPT_PATH = $PWD
# Check and install zsh
if command -v zsh >/dev/null 2>&1 ; then
    echo "zsh found"
    which zsh
    zsh -version
else
    echo "zsh not found, installing zsh"
    apt upgrade && sudo apt update
    sudo apt install zsh
    zsh -version
fi

# Check and install curl
if command -v curl >/dev/null 2>&1 ; then
    echo "curl found"
    which curl
    curl -version
else
    echo "curl not found, installing curl"
    apt upgrade && sudo apt update
    sudo apt install curl
    curl -version
fi

# Check and install curl
if command -v git >/dev/null 2>&1 ; then
    echo "git found"
    which git
    git -version
else
    echo "git not found, installing git"
    sudo apt install git
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
    sudo apt install fonts-powerline
fi

# Installing fish plugins for zsh
git clone https://github.com/tarruda/zsh-autosuggestions ~/.oh-my-zsh/custom/plugins/zsh-autosuggestions

git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ~/.oh-my-zsh/custom/plugins/zsh-syntax-highlighting

# Installing python and virtualenv
/$SCRIPT_PATH/python_and_virtualenv.sh

# TODO: Check this pls
if  command -z python >/dev/null 2>&1 ; then
    echo "Failed to install python =/ face some bash init problems, be strong"
fi

# Installing personal oh-my-zsh configs ands pluguins
cd ~/.oh-my-zsh/custom/pluguins
git clone https://github.com/zsh-users/zsh-autosuggestions.git
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git

mv $SCRIPT_PATH/personal_configs/zshrc ~/.zshrc
source ~/.zshrc





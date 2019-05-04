#!/bin/bash
# Helps you to configure github ssh keys,run:
# chrmod u+x get_ssh.sh
# ./get_ssh.sh
# at the end ctrl+click on github link 
# paste your new key ;)


# install dependency
if command -v xclip >/dev/null 2>&1 ; then
    echo "xclip found"
    which xclip
    xclip -version
else
    echo "xclip not found, installing xclip"
    apt-get upgrade && sudo apt-get update
    sudo apt-get install xclip
    xclip -version
fi

echo "Enter your github email"
read user_email

ssh-keygen -t rsa -b 4096 -C "$user_email"

# Add SSH key to ssh agent
eval "$(ssh-agent -s)"
ssh-add ~/.ssh/id_rsa

xclip -sel clip < ~/.ssh/id_rsa.pub
echo "SSH is on your clipboard go to https://github.com/settings/keys and add yout new key!"



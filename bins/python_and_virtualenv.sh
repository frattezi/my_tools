#!/bin/bash
# Python installer for my needs installs python3, 
# pip3, virtualenv and virtualenvwrapper.


# TODO: Can be better
echo "Installing python3 and pip"
sudo apt install python3

sudo apt install python3-pip3

echo "Installing virtualenvs"
pip install virtualenv

pip install virtualenvwrapper
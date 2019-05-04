# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH="/home/frattezi/.oh-my-zsh"

# Virtualenvwrapper config and export
export WORKON_HOME=$HOME/.virtualenvs
export PROJECT_HOME=$HOME/Devel
source /usr/bin/virtualenvwrapper.sh 

# Zsh Theme | s2 custom
ZSH_THEME="spaceship"

# Zsh pluguins
plugins=(
	git 
	zsh-autosuggestions
  zsh-syntax-highlighting
)

# Loads oh-my-zsh-source
source $ZSH/oh-my-zsh.sh

# Ctop alias to function
ctop (){
  docker run --rm -ti \
    --name=ctop \
    -v /var/run/docker.sock:/var/run/docker.sock \
    quay.io/vektorlab/ctop:latest
}

# Preferred editor for local and remote sessions
if [[ -n $SSH_CONNECTION ]]; then
  export EDITOR='vim'
else
  export EDITOR='vi'
fi

# Compilation flags
export ARCHFLAGS="-arch x86_64"

# Export aliases
source $HOME/.aliases
# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH=/Users/chuckdries/.oh-my-zsh

# Set name of the theme to load. Optionally, if you set this to "random"
# it'll load a random theme each time that oh-my-zsh is loaded.
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
# POWERLEVEL9K_MODE='nerdfont-complete'
# ZSH_THEME="powerlevel9k/powerlevel9k"
# ZSH_THEME="robbyrussell"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git zsh-autosuggestions node npm osx extract z)

source $ZSH/oh-my-zsh.sh

# zstyle ':completion:*:default' list-colors ${(s.:.)LS_COLORS}

export PATH="$PATH:$HOME/.rvm/bin" # Add RVM to PATH for scripting
source /usr/local/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

# Use correct vim!
alias vim='/usr/local/bin/vim'
# give tmux color!
alias tmux='TERM=xterm-256color tmux'
# convenience!
alias asugen='ssh cpdries@general.asu.edu'
alias gryphon='ssh aspchuck@extern-0385728277e266af6.getsnworks.com'
# My own damn sanity
alias plr='cd /usr/local/lib/python2.7/site-packages/powerline'

#finally, call powerline!
. /usr/local/lib/python2.7/site-packages/powerline/bindings/zsh/powerline.zsh

test -e "${HOME}/.iterm2_shell_integration.zsh" && source "${HOME}/.iterm2_shell_integration.zsh"

#Permissions:
umask 000

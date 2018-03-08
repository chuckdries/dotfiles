# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH=/home/chuckdries/.oh-my-zsh #linux
#export ZSH=/Users/chuckdries/.oh-my-zsh #mac

# Set name of the theme to load. Optionally, if you set this to "random"
# it'll load a random theme each time that oh-my-zsh is loaded.
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
# POWERLEVEL9K_MODE='nerdfont-complete'
# ZSH_THEME="powerlevel9k/powerlevel9k"
ZSH_THEME="robbyrussell"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git zsh-autosuggestions node npm osx extract z zsh-syntax-highlighting)

source $ZSH/oh-my-zsh.sh

# zstyle ':completion:*:default' list-colors ${(s.:.)LS_COLORS}

export PATH="$PATH:$HOME/.rvm/bin:$HOME/Library/Python/2.7/bin" # Add RVM to PATH for scripting
#NOTE: Use plugin method for zsh syntax highlight now

# Use correct vim!
# alias vim='/usr/local/bin/vim' #why did I do this again?
# give tmux color!
alias tmux='TERM=xterm-256color tmux'
# convenience!
alias asugen='ssh cpdries@general.asu.edu'
alias gryphon='ssh aspchuck@extern-0385728277e266af6.getsnworks.com'
# My own damn sanity (mac only!)
alias plr='cd /Users/chuckdries/Library/Python/2.7/lib/python/site-packages/powerline'
# dotfile config
alias config='/usr/bin/git --git-dir=$HOME/.cfg/ --work-tree=$HOME'

#finally, call powerline!
# EDIT: fuck powerline it's not worth it
#. /home/chuckdries/.local/lib/python2.7/site-packages/powerline/bindings/zsh/powerline.zsh
#. /Users/chuckdries/Library/Python/2.7/lib/python/site-packages/powerline/bindings/zsh/powerline.zsh #mac

test -e "${HOME}/.iterm2_shell_integration.zsh" && source "${HOME}/.iterm2_shell_integration.zsh"

#Permissions:
umask 002

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

alias openmail='firefox inbox.google.com'
alias opengithub='firefox github.com/notifications'

export GPG_TTY=$(tty)
gpg-connect-agent updatestartuptty /bye
unset SSH_AGENT_PID
export SSH_AUTH_SOCK=$(gpgconf --list-dirs agent-ssh-socket)


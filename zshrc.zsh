#####################################################################
################ ZSH CONFIGURATION AND CUSTOMIZATION ################
#####################################################################
# Path to your oh-my-zsh installation.
export ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load. Optionally, if you set this to "random"
# it'll load a random theme each time that oh-my-zsh is loaded.
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
ZSH_THEME="random"
#ZSH_THEME="robbyrussell"

# Set list of themes to load
# looking in ~/.oh-my-zsh/themes/
# An empty array have no effect
ZSH_THEME_RANDOM_CANDIDATES=( "robbyrussell" "agnoster" )

# Highlighting filetypes and zsh commands
source $ZSH_CUSTOM/plugins/zsh-syntax-highlighting-filetypes/zsh-syntax-highlighting-filetypes.zsh

# Uncomment the following line to use hyphen-insensitive completion. Case
# sensitive completion must be off. _ and - will be interchangeable.
HYPHEN_INSENSITIVE="true"

# Uncomment the following line to enable command auto-correction.
ENABLE_CORRECTION="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# The optional three formats: "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# HIST_STAMPS="mm/dd/yyyy"

source $ZSH/oh-my-zsh.sh

# You may need to manually set your language environment
export LANG=en_US.UTF-8

# Alias for zsh
alias zshconfig="vi $HOME/.zshrc"
alias zc="vi $HOME/.zshrc"
alias zshsource="source $HOME/.zshrc"
alias zs="source $HOME/.zshrc"

#####################################################################
############# CONFIGURATION AND CUSTOMIZATION: VIM ##################
#####################################################################
alias vi='/usr/bin/vi'
alias vim='/usr/bin/vi'
# Preferred editor for local and remote sessions
if [[ -n $SSH_CONNECTION ]]; then
  export EDITOR='vi'
else
  export EDITOR='vi'
fi

#####################################################################
############# CONFIGURATION AND CUSTOMIZATION: SSH ##################
#####################################################################
export SSH_KEY_PATH="~/.ssh/dsa_id"

#####################################################################
############# CONFIGURATION AND CUSTOMIZATION: GIT ##################
#####################################################################
source $HOME/.git.zsh

#####################################################################
#################### LOCAL CONFIGURATION ############################
#####################################################################
source $HOME/.local.zsh

#####################################################################
############ CONFIGURATION AND CUSTOMIZATION: UNIX ##################
#####################################################################
alias j='jobs'
alias t='tmx2' # or tmux
alias th='touch'
alias cpu='sysctl -n machdep.cpu.brand_string'

#####################################################################
########## CONFIGURATION AND CUSTOMIZATION: PLUGINS #################
#####################################################################
plugins=(
  brew,
  encode64, # encode64/decode64
  git,
  jsontools,
  osx,
  python,
  pip,
  powify,
  systemd,
  terminalapp,
  tmux,
  web-search,
  zsh-256color
)

ZSH_TMUX_AUTOSTART=true



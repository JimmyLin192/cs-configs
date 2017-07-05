# Path to your oh-my-zsh installation.
export ZSH=$HOME/.oh-my-zsh
# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="robbyrussell"
source $ZSH/oh-my-zsh.sh

# Vim Customization
alias vi='/usr/bin/vi'
alias vim='/usr/bin/vi'

# ZSH Customization
plugins=(git)
alias zshconfig="vi $HOME/.zshrc"
alias zshconf="vi $HOME/.zshrc"
alias zshc="vi $HOME/.zshrc"
alias zshsource="source $HOME/.zshrc"
alias zshs="source $HOME/.zshrc"

# Git Customization: basics 
alias git="/usr/local/bin/git" # installed by brew
alias g='git'
compdef g=git
alias glm="git log --merge"
alias grl="git reflog"
alias gsb="git show-branch"

alias gd='git diff'
compdef _git gd=git-diff
gdv() { git diff -w "$@" | view - }
compdef _git gdv=git-diff
alias gdc='git diff --cached'
compdef _git gdc=git-diff
alias gds="git diff --stat"


# Git Customization: Commit
alias gc='git commit -v'
compdef _git gc=git-commit
alias gc!='git commit -v --amend'
compdef _git gc!=git-commit
alias gca='git commit -v -a'
compdef _git gc=git-commit
alias gca!='git commit -v -a --amend'
compdef _git gca!=git-commit
alias gcmsg='git commit -m'
compdef _git gcmsg=git-commit

# Git Customization: Pull and Push
alias gl='git pull'
compdef _git gl=git-pull
alias gpm="git pull origin master"
compdef _git gpm=git-pull
alias gcm='git checkout master'
alias gup='git pull --rebase'
compdef _git gup=git-fetch

alias gp='git push'
compdef _git gp=git-push

# Git Customization: Snapchat
alias bbs="./buckw build snapchat"
alias bis="./buckw install snapchat"
alias gbi="./gradlew buckInstall"

# Git File Manipulation
alias gcf="git cat-file -p"
alias gcoi="git checkout --"

# Git Customization: Stashing
alias gst='git stash'
alias gsta='git stash apply'
alias gstb='git stash branch'
alias gsts='git stash show --text'
alias gstp='git stash pop'
alias gstd='git stash drop'

# Git Customization: Remote Repositories
alias gr='git remote'
compdef _git gr=git-remote
alias grv='git remote -v'
compdef _git grv=git-remote
alias grmv='git remote rename'
compdef _git grmv=git-remote
alias grrm='git remote remove'
compdef _git grrm=git-remote
alias grset='git remote set-url'
compdef _git grset=git-remote
alias grup='git remote update'
compdef _git grset=git-remote

# Git Customization: Rebasing
alias grbi='git rebase -i'
compdef _git gri=git-rebase
alias grbc='git rebase --continue'
compdef _git grbc=git-rebase
alias grba='git rebase --abort'
compdef _git grba=git-rebase
alias gb='git branch'
compdef _git gb=git-branch
alias gba='git branch -a'
compdef _git gba=git-branch

# alias ohmyzsh="mate ~/.oh-my-zsh"

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to disable command auto-correction.
# DISABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# The optional three formats: "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
if [[ -n $SSH_CONNECTION ]]; then
  export EDITOR='vi'
else
  export EDITOR='vi'
fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# ssh
# export SSH_KEY_PATH="~/.ssh/dsa_id"
# Aliases


alias gco='git checkout'
compdef _git gco=git-checkout

alias gcount='git shortlog -sn'
compdef gcount=git
alias gcl='git config --list'
alias gcp='git cherry-pick'
compdef _git gcp=git-cherry-pick
alias gl='git log'
compdef _git gl=git-log
alias glg='git log --stat --max-count=10'
compdef _git glg=git-log
alias glgg='git log --graph --max-count=10'
compdef _git glgg=git-log
alias glgga='git log --graph --decorate --all'
compdef _git glgga=git-log
alias glo='git log --oneline --decorate --color'
compdef _git glo=git-log
alias glog='git log --oneline --decorate --color --graph'
compdef _git glog=git-log
alias gs='git status'
compdef _git gs=git-status
alias gss='git status -s'
compdef _git gss=git-status
alias ga='git add'
compdef _git ga=git-add
alias gm='git merge'
compdef _git gm=git-merge
alias grh='git reset HEAD'
alias grhh='git reset HEAD --hard'
alias gclean='git reset --hard && git clean -dfx'
alias gwc='git whatchanged -p --abbrev-commit --pretty=medium'

#remove the gf alias
#alias gf='git ls-files | grep'

alias gpoat='git push origin --all && git push origin --tags'
alias gmt='git mergetool --no-prompt'
compdef _git gm=git-mergetool

alias gg='git gui citool'
alias gga='git gui citool --amend'
alias gk='gitk --all --branches'

# Will cd into the top of the current repository
# or submodule.
alias grt='cd $(git rev-parse --show-toplevel || echo ".")'

#
# Will return the current branch name
# Usage example: git pull origin $(current_branch)
function current_branch() {
  ref=$(git symbolic-ref HEAD 2> /dev/null) || \
  ref=$(git rev-parse --short HEAD 2> /dev/null) || return
  echo ${ref#refs/heads/}
}

function current_repository() {
  ref=$(git symbolic-ref HEAD 2> /dev/null) || \
  ref=$(git rev-parse --short HEAD 2> /dev/null) || return
  echo $(git remote -v | cut -d':' -f 2)
}

# these aliases take advantage of the previous function
alias ggpull='git pull origin $(current_branch)'
compdef ggpull=git
alias ggpur='git pull --rebase origin $(current_branch)'
compdef ggpur=git
alias ggpush='git push origin $(current_branch)'
compdef ggpush=git
alias ggpnp='git pull origin $(current_branch) && git push origin $(current_branch)'
compdef ggpnp=git

# Pretty log messages
function _git_log_prettily(){
  if ! [ -z $1 ]; then
    git log --pretty=$1
  fi
}
alias glp="_git_log_prettily"
compdef _git glp=git-log

# Work In Progress (wip)
# These features allow to pause a branch development and switch to another one (wip)
# When you want to go back to work, just unwip it
#
# This function return a warning if the current branch is a wip
function work_in_progress() {
  if $(git log -n 1 2>/dev/null | grep -q -c "\-\-wip\-\-"); then
    echo "WIP!!"
  fi
}
# these alias commit and uncomit wip branches
alias gwip='git add -A; git ls-files --deleted -z | xargs -r0 git rm; git commit -m "--wip--"'
alias gunwip='git log -n 1 | grep -q -c "\-\-wip\-\-" && git reset HEAD~1'

# these alias ignore changes to file
alias gignore='git update-index --assume-unchanged'
alias gunignore='git update-index --no-assume-unchanged'
# list temporarily ignored files
alias gignored='git ls-files -v | grep "^[[:lower:]]"'

#####################################################################
## The following setting would be subject to the local configuration.
#####################################################################
export PATH=/opt/local/bin:$PATH
export PATH=/opt/local/sbin:$PATH
export PATH=/usr/bin:/bin:/usr/sbin:/sbin:$PATH
export PATH=/usr/local/bin:/opt/X11/bin:/usr/texbin:$PATH

# The next line sets up the PATH for the JAVA JRE
export JAVA_HOME="$(/usr/libexec/java_home -v 1.7)"
export PATH=$JAVA_HOME/bin:$PATH

# The next line updates PATH for the Google Cloud SDK.
if [ -f '/Users/jimmy.lin/Workspace/libraries/google-cloud-sdk/path.zsh.inc' ]; then source '/Users/jimmy.lin/Workspace/libraries/google-cloud-sdk/path.zsh.inc'; fi

# The next line enables shell command completion for gcloud.
if [ -f '/Users/jimmy.lin/Workspace/libraries/google-cloud-sdk/completion.zsh.inc' ]; then source '/Users/jimmy.lin/Workspace/libraries/google-cloud-sdk/completion.zsh.inc'; fi

# The next line sets up the PATH for the hbase
export PATH=$HOME/Workspace/libraries/hbase-1.2.1/bin:$PATH

# The next line sets up the PATH for the gradle
export GRADLE_HOME=/opt/local/share/java/gradle
export PATH=$GRADLE_HOME/bin:$PATH

# egads
export PATH=$HOME/libraries/apache-maven-3.3.9/bin:$PATH

# Android
export PATH=$HOME/Library/Android/sdk/platform-tools:$PATH
export ANDROID_HOME=$HOME/Library/Android/sdk

# App engine
export APPENGINE_HOME=~/Library/appengine-java-sdk-1.9.51

# Send Grid API Key
export SENDGRID_API_KEY=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
export PATH="$HOME/.jenv/bin:$PATH"
eval "$(jenv init -)"

# Catapult Renderer
export CATAPULT=$HOME/Workspace/catapult

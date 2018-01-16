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

# Gradle/Buck Customization: Snapchat Android
alias bbs="./buckw build snapchat"
alias bis="./buckw install snapchat"
alias gbi="./gradlew buckInstall"
alias ggpm="buck kill && rm -fr buck-out/ && git pull && git gc --prune=now && git remote prune origin"

# Git Customization: basics 
alias git="/usr/local/bin/git" # installed by brew
alias g='git'
compdef g=git

alias gm='git merge'
compdef _git gm=git-merge

alias grp='git rev-parse'

# Git Customization: Info
alias gls='git ls-files'
alias gsha='git hash-object' # get sha1 val
alias gparse='git rev-parse' # get file name
alias gsb='git show-branch'
alias gk='gitk --all --branches'
alias gcl='git config --list'

# Git Customization: add files into index
alias ga='git add'
alias gaa='git add -A' # add all
alias ga.='git add .' # add all new and modified (without deleted)
alias gau='git add -u' # add all modified and deleted (without new)
alias gap='git add -p' # hunk
compdef _git ga=git-add
compdef _git gaa=git-add
compdef _git gap=git-add
compdef _git ga.=git-add
compdef _git gau=git-add

# Git Customization: Checkout 
alias gco='git checkout'
alias gcm='git checkout master'
compdef _git gco=git-checkout
compdef _git gcm=git-checkout

# Git Customization: Status
alias gs='git status'
alias gss='git status -s'
compdef _git gs=git-status
compdef _git gss=git-status

# Git Customization: Differences
alias gd='git diff'
alias gds="git diff --stat"
alias gdstr='git diff -S'

alias gdc='git diff --cached'
alias gdcs="git diff --cached --stat"
alias gdcstr='git diff -S'
gdv() { git diff -w "$@" | view - }
compdef _git gd=git-diff
compdef _git gdc=git-diff
compdef _git gdv=git-diff

# Git Customization: Commits
alias gc='git commit -v'
alias gca='git commit -v -a'
alias gcam='git commit -a -m'
alias gc!='git commit -v --amend'
alias gca!='git commit -v -a --amend'
compdef _git gc=git-commit
compdef _git gcm=git-commit
compdef _git gcam=git-commit
compdef _git gc!=git-commit
compdef _git gca=git-commit
compdef _git gca!=git-commit

# Git Customization: Altering Commits
alias gcp='git cherry-pick'
compdef _git gcp=git-cherry-pick
alias grev='git revert'

# Git Customization: Pull and Push
alias gpl='git pull'
compdef _git gpl=git-pull
alias gpm="git pull origin master"
compdef _git gpm=git-pull
alias gup='git pull --rebase'
compdef _git gup=git-fetch
alias gp='git push'
compdef _git gp=git-push
alias gpo='git push origin'
compdef _git gpo=git-push

# Git Customization: Log
alias gl='git log'
alias glf='git log --follow'
alias glm="git log --merge"
compdef _git gl=git-log
compdef _git glf=git-log
compdef _git glm=git-log

alias grl="git reflog"
alias gwc='git whatchanged -p --abbrev-commit --pretty=medium'

# Git Customization: File Manipulation
alias gcf='git cat-file -p'
alias gsw='git show'
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
alias grb='git rebase'
alias grbi='git rebase -i'
alias grbc='git rebase --continue'
alias grba='git rebase --abort'
compdef _git grb=git-rebase
compdef _git grbi=git-rebase
compdef _git grbc=git-rebase
compdef _git grba=git-rebase

alias gb='git branch'
alias gba='git branch -a'
alias gbd='git branch -d'
alias gbD='git branch -D'
alias gbDA='git branch | egrep -v "(master|\*)" | xargs git branch -D'
compdef _git gba=git-branch
compdef _git gb=git-branch
compdef _git gbd=git-branch
compdef _git gbD=git-branch
compdef _git gbDA=git-branch

# Git Customization: Clean Repo
alias gclean='git reset --hard && git clean -dfx'

# Git Customization: ignoring file changes 
alias gig='git update-index --assume-unchanged'
alias gignore='git update-index --assume-unchanged'
alias guig='git update-index --no-assume-unchanged'
alias gunignore='git update-index --no-assume-unchanged'
alias gignored='git ls-files -v | grep "^[[:lower:]]"' # list temporarily ignored files

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
alias gcount='git shortlog -sn'
compdef gcount=git

#remove the gf alias
#alias gf='git ls-files | grep'

alias gpoat='git push origin --all && git push origin --tags'
alias gmt='git mergetool --no-prompt'
compdef _git gm=git-mergetool

alias gg='git gui citool'
alias gga='git gui citool --amend'

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

# Airflow
export AIRFLOW_HOME=$HOME/airflow
export GOOGLE_APPLICATION_CREDENTIALS=$HOME/.config/gcloud/application_default_credentials.json

# streaming-cli
export PATH=$PATH:$HOME/snapchat/blizzard/streaming/cli

# flowrida
source '/Users/jimmy.lin/.flowridarc'

# android ndk
export ANDROID_NDK_HOME="/usr/local/share/android-ndk"
export ANDROID_SDK=/usr/local/share/android-sdk
export ANDROID_SDK_ROOT=$ANDROID_SDK
export ANDROID_HOME=$ANDROID_SDK
export ANDROID_NDK_REPOSITORY=/usr/local/share/android-ndk
export ANDROID_SDK_HOME=$ANDROID_SDK
export ANDROID_REPO="/Users/jimmy.lin/android/snapchat"


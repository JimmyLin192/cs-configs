#####################################################################
############# CONFIGURATION AND CUSTOMIZATION: GIT ##################
#####################################################################
# Git Customization: basics
alias git="/usr/local/git/current/bin/git"
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
# }}}

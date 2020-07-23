# list aliases - linux
alias la='!git config -l | grep alias | cut -c 7-'

# Nav Shortcuts
alias dtop='cd /c/users/username/desktop'
alias projects='cd /c/Users/username/Documents/Projects'
alias ppCourses='cd /F/courses'  
alias lessons='cd /c/Users/username/Documents/Lessons'  
alias open='start'

# Git && Github

#Summary
alias graph='git log --all --decorate --oneline --graph'
alias graph1='git log --graph --topo-order --abbrev-commit --date=short --decorate --all --boundary --pretty=format:"%Cgreen%ad %Cred%h%Creset -%C(yellow)%d%Creset %s %Cblue[%cn]%Creset %Cblue%G?%Creset"'
alias l="git log --decorate --date=short"
alias l1="git log --oneline"
alias s='git status -s'
alias log-my-week='git log --author \$(git config user.email) --since "1 week ago"'

#Diff 
alias d='git diff'
alias dd='diff --check --dirstat --find-copies --find-renames --histogram --color'
alias ds='git diff --stat'
alias dc='git diff --cached'
	
#Adding 
alias a='git add'
alias aa='git add .'
alias ap='git add -p'

#Committing 
alias c="git commit"
alias gc='git commit -v'
alias ca='git commit -a --verbose'
alias cm='git commit -m'
alias m='git commit --amend --verbose'
alias ci='git commit --interactive'

# Add && Commit
alias ac='git add . && git commit -am'
alias cam='git commit -a -m'

#Backtracking
alias uncommit="reset --soft HEAD~1"
alias cleanout='!git clean -df && git checkout -- .'

#Preserving 
alias snapshot='!git stash push "snapshot: $(date)" && git stash apply "stash@{0}"'
alias archive='!"f() { top=$(rev-parse --show-toplevel); cd $top; tar cvf $top.tar $top ; }; f"'

#Branches
alias b='git branch'
alias ba='git branch -a'

alias co='git checkout'
alias cob='git checkout -b'

# list branches sorted by last modified - linux
alias b1='!git for-each-ref --sort="-authordate" --format="%(authordate)%09%(objectname:short)%09%(refname)" refs/heads | sed -e "s-refs/heads/--"'

#stash list
alias stashes='stash list'

#tags 
alias tags='tag -n1 --list'

#Comparing 
alias incoming='git remote update --prune; git log ..@{upstream}'
alias outgoing='git log @{upstream}..'

#Synchronizing 
alias get='git fetch --prune && git pull --rebase=preserve && git submodule update --init --recursive'
alias put='git commit --all && git push'


#Publishing
alias publish='git push -u origin $(git branch-name)'
alias unpublish='git push origin :$(git branch-name)'

#Remote Origin
alias rao='git remote add origin'
alias pushitgood='push -u origin --all'

#Pushing
alias push='git push'

#Pulling
alias pull='git pull'

#Fetching
alias fetch='git fetch'

#Merging
alias merge="git merge"

#Change remote url
alias set-u='git remote set-url'


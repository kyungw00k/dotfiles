# lang
export LANG="ko_KR.UTF-8"

export EDITOR=vim

# Env Variables
export HISTSIZE=100000
export HISTFILESIZE=409600
export HISTIGNORE="cd:ls:[bf]g:clear:exit:gp:gs:ll"
export HISTCONTROL=ignoredups

export LESS='-IRX' # case insenstive search / raw color sequences / don't clear screen on exit
alias top='top -o cpu'
alias grep='grep --color'

ulimit -n 1024

export PATH=.:$PATH

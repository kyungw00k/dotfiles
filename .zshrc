
# Homebrew:
export HOMEBREW_NO_ANALYTICS=1  # disables statistics that brew collects

export LC_ALL=ko_KR.UTF-8
export EDITOR="vim"
export ZPLUG_HOME=$HOME/.zplug
export ZSH_HISTORY_AUTO_SYNC=true

export TERM=xterm-color
export CLICOLOR=1
export LSCOLORS=GxFxCxDxBxegedabagaced
export GREP_OPTIONS='--color=auto'

# Env Variables
export HISTSIZE=100000
export HISTFILESIZE=409600
export HISTIGNORE="cd:ls:[bf]g:clear:exit:gp:gs:ll"
export HISTCONTROL=ignoredups

export LESS='-IRX' # case insenstive search / raw color sequences / don't clear screen on exit

ulimit -n 1024

export PATH=.:$PATH

# zplug initialization
[[ ! -f $ZPLUG_HOME/init.zsh ]] && git clone https://github.com/zplug/zplug $ZPLUG_HOME
source $ZPLUG_HOME/init.zsh

# do self-manage
# zplug 'zplug/zplug', hook-build:'zplug --self-manage'

# zsh users
zplug "zsh-users/zsh-completions"
zplug "zsh-users/zsh-history-substring-search"
zplug "zsh-users/zsh-syntax-highlighting"
zplug "zsh-users/zsh-autosuggestions"
zplug "lib/history", from:oh-my-zsh
zplug "lib/key-bindings", from:oh-my-zsh
#zplug "plugins/git", from:oh-my-zsh
#zplug "plugins/gitfast", from:oh-my-zsh
zplug "plugins/gitignore", from:oh-my-zsh
#zplug "plugins/osx", from:oh-my-zsh, if:"[[ $OSTYPE == *darwin* ]]"
zplug "plugins/zsh_reload", from:oh-my-zsh
zplug "plugins/colorize", from:oh-my-zsh
zplug "plugins/docker", from:oh-my-zsh
zplug "plugins/nvm", from:oh-my-zsh
zplug "plugins/node", from:oh-my-zsh
zplug "clvv/fasd", as:command, use:fasd

zplug "junegunn/fzf-bin", \
    from:github, \
    as:command, \
    rename-to:fzf, \
    use:"*darwin*amd64*", \
    if:"[[ $OSTYPE == *darwin* ]]"

zplug "mafredri/zsh-async"
zplug "sindresorhus/pure", as:theme, use:pure.zsh

# auto-close quotes and brackets like a pro
zplug 'hlissner/zsh-autopair', defer:2

# another eyecandy
zplug 'zdharma/fast-syntax-highlighting', defer:2, hook-load:'FAST_HIGHLIGHT=()'

#zplug "desyncr/auto-ls"
#zplug "momo-lab/zsh-abbrev-alias"

# Enhanced cd
zplug "b4b4r07/enhancd", use:enhancd.sh

# Bookmarks and jump
zplug "jocelynmallon/zshmarks"

# Enhanced dir list with git features
zplug "supercrabtree/k"

# Tips for aliases
zplug "djui/alias-tips"

export ZSH_PLUGINS_ALIAS_TIPS_TEXT=' alias hint: '

zplug check || zplug install
zplug load

if type brew &>/dev/null; then
  FPATH=$(brew --prefix)/share/zsh-completions:$FPATH

  autoload -Uz compinit
  compinit
fi

eval "$(/opt/homebrew/bin/brew shellenv)"
eval "$(source $HOME/.env)"

export JAVA_HOME="/opt/homebrew/Cellar/openjdk/21.0.7/libexec/openjdk.jdk/Contents/Home"
export PATH="$JAVA_HOME/bin:$PATH"

export ANDROID_HOME=$HOME/Library/android/sdk
export PATH="/usr/local/opt/python@3.8/bin:$ANDROID_HOME/platform-tools:$ANDROID_HOME/tools/bin:$JAVA_HOME/bin:$PATH:$ANDROID_HOME/ndk/28.0.13004108
"

export NVM_DIR="$HOME/.nvm"
  [ -s "/opt/homebrew/opt/nvm/nvm.sh" ] && \. "/opt/homebrew/opt/nvm/nvm.sh"  # This loads nvm
  [ -s "/opt/homebrew/opt/nvm/etc/bash_completion.d/nvm" ] && \. "/opt/homebrew/opt/nvm/etc/bash_completion.d/nvm"  # This loads nvm bash_completion

alias ip=ipconfig getifaddr
alias npm=pnpm

test -e "${HOME}/.iterm2_shell_integration.zsh" && source "${HOME}/.iterm2_shell_integration.zsh"

export PATH="$HOME/.local/bin:$PATH"

eval "$(rbenv init - --no-rehash zsh)"

# bun completions
[ -s "/Users/humphrey.park/.bun/_bun" ] && source "/Users/humphrey.park/.bun/_bun"

# bun
export BUN_INSTALL="$HOME/.bun"
export PATH="$BUN_INSTALL/bin:$PATH"

# Added by LM Studio CLI (lms)
export PATH="$PATH:/Users/humphrey.park/.lmstudio/bin"
# The following lines have been added by Docker Desktop to enable Docker CLI completions.
fpath=(/Users/humphrey.park/.docker/completions $fpath)
autoload -Uz compinit
compinit
# End of Docker CLI completions
export PATH="/opt/homebrew/opt/openjdk@21/bin:$PATH"

# pnpm
export PNPM_HOME="/Users/humphrey.park/Library/pnpm"
case ":$PATH:" in
  *":$PNPM_HOME:"*) ;;
  *) export PATH="$PNPM_HOME:$PATH" ;;
esac
# pnpm end

# Rust
. "$HOME/.cargo/env"

# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"

ZSH_THEME="robbyrussell"
plugins=(git zsh-autosuggestions zsh-syntax-highlighting web-search)

source $ZSH/oh-my-zsh.sh
alias bat='bat -pp --color=always --theme="Monokai Extended Origin" '
alias ls='lsd -Ah '
alias mkdir='mkdir -p '
alias cp='cp -r '
alias v='nvim -p '
alias ga='git add -A '
alias gt='git stash '
alias gc='git commit '
alias gp='git push '
alias gcd='git commit -m "gcd $(date)"'

# gm() { git commit -m "$*" }
gamp() { git add -A; git commit -m "${*:-gamp}"; git push }

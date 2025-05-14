export ZSH="/root/.oh-my-zsh"
#ZSH_THEME="robbyrussell"
ZSH_THEME="powerlevel10k/powerlevel10k"
plugins=(git zsh-syntax-highlighting zsh-autosuggestions zsh-fzf-history-search zsh-autocomplete)
source "$ZSH/oh-my-zsh.sh"

[[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]] && source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
[[ -f ~/.p10k.zsh ]] && source ~/.p10k.zsh

export PATH="/usr/local/sbin:/usr/local/bin:/usr/bin:/bin:/sbin:/opt/nvim/bin:$HOME/.local/bin:$PATH"
export LANG="en_US.UTF-8"
#export TERM="xterm-256color"

alias q="exit"
alias c="clear"
alias AU="apt update -y && apt upgrade -y"
alias unzsh="bash ~/.oh-my-zsh/tools/uninstall.sh"
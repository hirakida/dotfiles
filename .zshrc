autoload -Uz compinit && compinit

setopt auto_cd
setopt auto_pushd
setopt pushd_ignore_dups
setopt correct

# history
setopt share_history
setopt hist_ignore_dups
setopt hist_ignore_all_dups
setopt hist_ignore_space
setopt hist_expand
#setopt extended_history

# prompt
PROMPT='%# '
RPROMPT='%d'

# bindkey
bindkey -e
bindkey '^r' history-incremental-pattern-search-backward
#bindkey '^s' history-incremental-pattern-search-forward

# alias
alias ll='ls -l'
alias la='ls -la'
alias ...='cd ../..'
alias ....='cd ../../..'
alias historyall='history 1'
alias pscpu='ps Au'
alias psmem='ps Av'
alias timestamp='date +%s'

# function
# timestamp to date
ttod() {
    date -r $1
}

# timestamp milliseconds to date
tmtod() {
    date -r $(($1 / 1000))
}

brewfile() {
    brew bundle dump --force --file=.Brewfile
}

[[ -s $HOME/.zsh_secret ]] && . $HOME/.zsh_secret
[[ -s $HOME/.gvm/scripts/gvm ]] && . $HOME/.gvm/scripts/gvm
[[ -s $SDKMAN_DIR/bin/sdkman-init.sh ]] && . $SDKMAN_DIR/bin/sdkman-init.sh

source /usr/local/share/zsh-autosuggestions/zsh-autosuggestions.zsh
source <(kubectl completion zsh)

eval "$(direnv hook zsh)"

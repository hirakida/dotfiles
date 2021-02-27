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
setopt prompt_subst
PROMPT='$(__git_ps1 " (%s)")%# '
RPROMPT='%d'

GIT_PS1_SHOWDIRTYSTATE=1
GIT_PS1_SHOWUPSTREAM=auto
GIT_PS1_SHOWUNTRACKEDFILES=1
GIT_PS1_SHOWSTASHSTATE=1

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
alias brewbundle='brew bundle --global'
alias brewbundledump='brew bundle dump --global --force'

# functions
timestamp() { date +%s }
ttod() { date -r $1 +"%Y-%m-%d %H:%M:%S" }
tmtod() { date -r $(($1 / 1000)) +"%Y-%m-%d %H:%M:%S" }

finder_show_all_files() {
    if [ $# -ne 0 ] && [ $1 = 1 ]; then
        defaults write com.apple.finder AppleShowAllFiles TRUE
    else
        defaults write com.apple.finder AppleShowAllFiles FALSE
    fi
    killall Finder
}

source $ZDOTDIR/.zsecret

zstyle ':completion:*:*:git:*' script $HOME/.git-completion.bash
source $HOME/.git-prompt.sh

source /usr/local/share/zsh-autosuggestions/zsh-autosuggestions.zsh
source <(kubectl completion zsh)
[[ -s $SDKMAN_DIR/bin/sdkman-init.sh ]] && source $SDKMAN_DIR/bin/sdkman-init.sh
[[ -s $HOME/.gvm/scripts/gvm ]] && source $HOME/.gvm/scripts/gvm

eval "$(direnv hook zsh)"

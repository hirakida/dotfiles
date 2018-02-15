autoload -Uz compinit && compinit

# history
export HISTFILE=$HOME/.zsh_history
export HISTSIZE=10000
export SAVEHIST=10000
setopt extended_history
setopt hist_ignore_dups
setopt hist_ignore_space
setopt share_history

setopt auto_pushd
setopt correct
setopt auto_cd

# prompt
PROMPT='$ '
RPROMPT='%d'

function history-all { history -E 1 }

if [[ -f $HOME/.zsh_aliases ]]; then
  . $HOME/.zsh_aliases
fi

if [[ -f $HOME/.zsh_secrets ]]; then
  . $HOME/.zsh_secrets
fi

[[ -s $HOME/.gvm/scripts/gvm ]] && . $HOME/.gvm/scripts/gvm
[[ -s $SDKMAN_DIR/bin/sdkman-init.sh ]] && . $SDKMAN_DIR/bin/sdkman-init.sh
[[ -s $HOME/.config/yarn/global/node_modules/tabtab/.completions/jhipster.zsh ]] && . $HOME/.config/yarn/global/node_modules/tabtab/.completions/jhipster.zsh

path=(
#    $GOPATH/bin(N-/)
    $HOME/.nodebrew/current/bin(N-/)
    $HOME/.nimble/bin
    /opt/homebrew/opt/mysql-client/bin
    $path
)
typeset -U PATH

fpath=($HOME/.zsh/functions $fpath)

# dir
export SDKMAN_DIR=$HOME/.sdkman

# editor
export EDITOR=vim
export GIT_EDITOR=$EDITOR

# history
export HISTSIZE=10000
export SAVEHIST=10000

export SSLKEYLOGFILE=$HOME/log/sslkey.log

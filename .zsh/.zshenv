path=(
#    $GOPATH/bin(N-/)
    $HOME/.nodebrew/current/bin(N-/)
    $HOME/.nimble/bin
    /usr/local/opt/mysql@5.7/bin(N-/)
    /System/Library/Frameworks/JavaScriptCore.framework/Versions/Current/Resources/jsc
    $path
)
typeset -U PATH

fpath=($HOME/.zsh/functions $fpath)

# dir
export SDKMAN_DIR=$HOME/.sdkman

# editor
export EDITOR=vim
export SVN_EDITOR=$EDITOR
export GIT_EDITOR=$EDITOR

# history
# export HISTFILE=$ZDOTDIR/.zhistory
export HISTSIZE=10000
export SAVEHIST=10000

#!/bin/bash
if [ "" == "$1" ]; then
    git --help
    exit
fi
ARG1=$1
ARGS=($@)
function get_shortcut_argv(){
    if [ "$ARG1" == "`echo ${ARGS[@]}`" ]; then
        return
    fi
    unset ARGS[0]
    echo ${ARGS[@]}
}
if [ "b" == "$1" ]; then
    git branch `get_shortcut_argv`
    exit
fi
if [ "m" == "$1" ]; then
    git merge `get_shortcut_argv`
    exit
fi
if [ "ch" == "$1" ]; then
    git checkout `get_shortcut_argv`
    exit
fi
if [ "co" == "$1" ]; then
    git commit `get_shortcut_argv`
    exit
fi
if [ "ps" == "$1" ]; then
    git push `get_shortcut_argv`
    exit
fi
if [ "pl" == "$1" ]; then
    git pull `get_shortcut_argv`
    exit
fi
git `echo ${ARGS[@]}`

#!/usr/bin/env bash
function set-title-echo() {
  echo -en "\033]0;$*\a"
}

function set-title-prompt() {
  PROMPT_COMMAND="echo -en \"\033]0;$*\a\""
}

function set-title-PS1() {
  if [[ -z "$ORIG" ]]; then
    ORIG=$PS1
  fi
  TITLE="\[\e]2;$*\a\]"
  PS1=${ORIG}${TITLE}
}

function set-title() {
  set-title-echo "$*"
}

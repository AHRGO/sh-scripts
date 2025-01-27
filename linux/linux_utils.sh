#!/bin/bash

# VERBOSE METHODS
reload_terminal_zshrc() {
    source ~/.zshrc
}

open_zsh_terminal() {
    exec zsh
}



# SHORTCUTS
rldz() {
    reload_terminal_zshrc
}

opz() {
    open_zsh_terminal
}



### LAB

____print_conditional() {
  local function_to_execute="$1"
    read -r response
      response=$(echo "$response" | tr '[:upper:]' '[:lower:]') # converte a resposta para minúsculas
    if [[ "$response" == "y" || -z "$response" ]]; then
        "$function_to_execute"
    else
        echo "Operação cancelada. A branch '$2' não foi criada."
    fi
}
#!/bin/bash

# VERBOSE METHODS
reload_terminal() {
    if [[ "$SHELL" == */zsh ]]; then
        source ~/.zshrc
    elif [[ "$SHELL" == */bash ]]; then
        source ~/.bashrc
    else
        echo "O shell $SHELL não é suportado"
    fi
}

open_terminal() {
    if [[ "$SHELL" == */zsh ]]; then
        exec zsh
    elif [[ "$SHELL" == */bash ]]; then
        exec bash
    else
        echo "O shell $SHELL não é suportado"
    fi

}



# SHORTCUTS
rld() {
    reload_terminal
}

opn() {
    open_terminal
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
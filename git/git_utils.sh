#!/bin/bash

# VERBOSE METHODS

#verifies if a branch exists
branch_exists() {
    git rev-parse --verify "$1" >/dev/null 2>&1
}

#checks if there are any changes not saved or not committed
check_status() {
    if ! git diff --quiet || ! git diff --cached --quiet; then
        echo "Erro: Existem mudanças que não foram salvas ou commitadas."
        return 1
    fi
    return 0
}



### LAB

___record_last_branch() {
    # Armazena a branch atual em um arquivo .last_branch
    git branch --show-current > .last_branch
}

____go_back_to_last_branch() {
    if [ -f .last_branch ]; then
        last_branch=$(cat .last_branch)
        echo "Voltando para a branch '$last_branch'..."
        git checkout "$last_branch"
    else
        echo "Nenhuma branch anterior registrada."
    fi
}



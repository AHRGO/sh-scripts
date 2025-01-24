#!/bin/bash

# This file will gather all other files, to make a easy-to-use import

# gets the base directory where this file is
SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]:-$0}")" && pwd)"


# $1 is the dir name and $2 is the file name
verifies_and_import() {
    if [ -f "$SCRIPT_DIR/$1/$2" ]; then
        # echo "Path de sucesso: $SCRIPT_DIR/$1/$2"
        source "$SCRIPT_DIR/$1/$2"
        echo "O arquivo $2 foi importado com sucesso!"
    else
        # echo "Path de fracasso: $SCRIPT_DIR/$1/$2"
        echo "Aviso: o arquivo $2 não foi encontrado!"
    fi
}


# Imports

# GIT functions
verifies_and_import git d4c.sh

# Flutter
verifies_and_import flutter flutter_utils.sh

# Q+
verifies_and_import app app_utils.sh


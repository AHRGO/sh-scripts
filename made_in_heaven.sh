#!/bin/bash

# This file will gather all other files, to make an easy-to-use import

# gets the base directory where this file is
SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]:-$0}")" && pwd)"


# $1 is the dir name and $2 is the file name
verifies_file_path() {
    if [ -f "$SCRIPT_DIR/$1/$2" ]; then
        source "$SCRIPT_DIR/$1/$2"
        echo "O arquivo $2 foi importado com sucesso!"
    else
        echo "Aviso: o arquivo $2 não foi encontrado!"
    fi
}


# GIT functions
verifies_file_path git d4c.sh
verifies_file_path git kq.sh


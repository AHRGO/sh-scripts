#!/bin/bash

# This file will gather all other files, to make a easy-to-use import

# gets the base directory where this file is
SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]:-$0}")" && pwd)"

# Colors for better visualize the messages
RED='\033[0;31m'
GREEN='\033[0;32m'
NC='\033[0m'


# $1 is the dir name and $2 is the file name
verifies_and_import() {
    if [ -f "$SCRIPT_DIR/$1/$2" ]; then
        # echo "Path de sucesso: $SCRIPT_DIR/$1/$2"
        source "$SCRIPT_DIR/$1/$2"
        echo -e "${GREEN}O arquivo $2 foi importado com sucesso!${NC}"
    else
        # echo "Path de fracasso: $SCRIPT_DIR/$1/$2"
        echo "${RED}Aviso: o arquivo $2 não foi encontrado!${NC}"
    fi
}


# IMPORTS

## Dev Helper
verifies_and_import dev-helper script.sh

## Alias File
verifies_and_import ./ aliases.sh

## Linux
verifies_and_import linux linux_utils.sh
verifies_and_import linux shortcuts.sh

## Docker
verifies_and_import docker docker_utils.sh

## GIT functions
verifies_and_import git d4c.sh

## Flutter
verifies_and_import flutter flutter_utils.sh

## Q+
verifies_and_import app app_utils.sh



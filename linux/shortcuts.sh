#!/bin/bash

if [ -f "$SCRIPT_DIR/aliases.sh" ]; then
    source "$SCRIPT_DIR/aliases.sh"
else
    echo "O arquivo de alias não foi encontrado! Verifique sua existência ou crie um arquivo 'aliases.sh' e tente novamente."
fi


idea() {
    if [ -n "$IDEA_PATH" ]; then
        "$IDEA_PATH"
    else
        echo "O caminho para executar o IntelliJ não foi definido."
    fi
}


studio() {
    if [ -n "$STUDIO_PATH" ]; then
        "$STUDIO_PATH"
    else
        echo "O caminho para executar o Android Studio não foi definido."
    fi
}

mine() {
    if [ -n "$MINECRAFT_PATH" ]; then
        "$MINECRAFT_PATH"
    else
        echo "O caminho para executar o Minecraft não foi definido."
    fi
}

postman() {
    if [ -n "$POSTMAN_PATH" ]; then
        "$POSTMAN_PATH"
    else
        echo "O caminho para executar o Postman não foi definido."
    fi
}

dacf() {
    if [ -n "$DAC_FRONTEND_PATH" ]; then
        "$DAC_FRONTEND_PATH"
    else
        echo "O caminho para abrir o projeto frontend de DAC não foi definido."
    fi
}

dacb() {
    if [ -n "$DAC_BACKEND_PATH" ]; then
        "$DAC_BACKEND_PATH"
    else
        echo "O caminho para O caminho para abrir o projeto backend de DAC não foi definido."
    fi
}

dgw() {
    if [ -n "$DAC_GATEWAY_PATH" ]; then
        "$DAC_GATEWAY_PATH"
    else
        echo "O caminho para O caminho para abrir a API Gateway de DAC não foi definido."
    fi
}
#!/bin/bash

# Nome do arquivo onde serão salvas as respostas.
USER_TODO_FILE="taskList.txt"
HOME_PATH="$(cd && pwd)"
DESKTOP_PATH="$HOME_PATH/Desktop"
SAVE_PATH="$DESKTOP_PATH/$USER_TODO_FILE"

# Array para armazenar as respostas dinâmicamente
declare -A USER_ANSWERS

declare -a QUESTION_ORDER=()

question_system_will_ask() {
    local question_key=$1
    local question_to_ask=$2

    echo "$question_to_ask"
    read user_answer
    USER_ANSWERS["$question_key"]="$user_answer"

    if [[ ! " ${QUESTION_ORDER[@]} " =~ "$question_key" ]]; then
        QUESTION_ORDER+=("$question_key")
    fi
}

save_user_answers() {

    # Limpa o arquivo antes de iniciar o processo de salvar
    > "$SAVE_PATH"

    echo "====== Suas Respostas ======" > "$SAVE_PATH"

    for question_key in "${QUESTION_ORDER[@]}"; do
        echo "$question_key: \"${USER_ANSWERS[$question_key]}\"" >> "$SAVE_PATH"
    done

    echo "Todas as respostas foram salvas em $SAVE_PATH" 
}



project_type() {
    question_system_will_ask "tipo_de_projeto" "Qual é o tipo de projeto que você deseja criar?"
}

language() {
    question_system_will_ask "linguagem_a_ser_usada" "Qual é a linguagem que você quer usar?" 
}


devHelper(){
    # Limpar os arrays a cada nova execução
    declare -A USER_ANSWERS=()
    declare -a QUESTION_ORDER=()


    project_type
    language
    save_user_answers

}

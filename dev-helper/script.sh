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


# QUESTIONS SECTION

# NEW PROJECT
project_type() {
    question_system_will_ask "tipo_de_projeto" "Qual é o tipo de projeto que você deseja criar?"
}

language() {
    question_system_will_ask "linguagem_a_ser_usada" "Qual é a linguagem que você quer usar?" 
}


#BUGFIX
what_you_should_fix() {
    question_system_will_ask "problema" "Qual é o problema que você deve resolver?"
}

you_know_how_to_fix_it() {
    question_system_will_ask "sabe_resolver" "Você sabe como resolver esse problema?"
}

how_many_steps_will_you_need() {
    question_system_will_ask "quantidade_passos" "Em quantas etapas você vai dividir esse problema?"
} 

what_are_these_steps() {
    question_system_will_ask "passos" "Quais são essas estapas?"
}





# WRAPPER
questions_to_ask_to_developer() {
    what_you_should_fix
    you_know_how_to_fix_it
    how_many_steps_will_you_need
    what_are_these_steps
}


devHelper(){
    # Limpar os arrays a cada nova execução
    declare -A USER_ANSWERS=()
    declare -a QUESTION_ORDER=()


    questions_to_ask_to_developer
    save_user_answers

}

#!/bin/bash

ARQUIVO_RESPOSTAS="taskList.txt"

system_question() {
    local question_to_ask=$1
    local user_answer_to_salve=$2

    echo "$question_to_ask"
    read user_answer
    eval "$user_answer_to_salve='$user_answer'"
}


project_type() {
    system_question "Qual é o tipo de projeto que você deseja criar?" project_type_value
}

finish_and_save_answer() {
    echo "Tipo do projeto: $project_type_value" >> "$ARQUIVO_RESPOSTAS"
    echo "A resposta foi salva em $ARQUIVO_RESPOSTAS" 

}

main(){
    project_type
    finish_and_save_answer
}
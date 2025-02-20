# Tips
### #0
Escrever tudo em funções modularizadas que salvam os valores em variáveis constantes. Cada função será responsabilizada por apenas uma frase e o tratamento da resposta associada à ela

### #1
Enquanto for escrevendo o programa em bash, crie um arquivo de tutorial, pra você e para os outros poderem implementar sua lógica nele futuramente. Para que o programa possa expandir.

# Documentação para entender essa joça:
- **s: ${string}** - é o que o sistema vai digitar na tela.
- **u: ${string}** - é o que o usuário vai escolher.
- **$** *no final de uma frase de usuário* - significa que aquele valor, digitado pelo usuário, será salvo em uma variável para ser apresentado no final.
- **?:** *no final de uma frase do sistema, é uma abstração de um if ternário, que significa* - O sistema vai propor escolhas prontas para o usuário. Se uma das opções contém **$** no final dela, significa que aquele valor será salvo. Se termina com **/**, siginifica que auqele diálogo vai levar a uma nova linha de conversa.
- **u=> ${string}** - o usuário escolheu a opção demonstrada. A resposta para esse fluxo deve ser feita dentro de um tab (4 espaços)
- *quando algo terminar com **.deadEnd** significa que* - aquela linha de convera acabou ali. Muitas vezes isso signficia que para deixar a lógica simples, não foi extendido a conversa.

# Lógica do código #01
s: você quer criar uma feature/ ou corrigir um bug/?
u=>feature:
    .deadEnd



# Quiz Dart - Desafio dos Devs

- **Integrantes:** Jocilfran Gabriel Gomes de França e _(nome do segundo integrante)_
- **Trilha:** Desenvolvimento Mobile

## Apresentação

Quiz de terminal feito em Dart. O jogador informa o nome, escolhe uma categoria
e responde perguntas de múltipla escolha (A, B, C ou D).

**Tema:** tecnologia, jogos e conhecimentos gerais.

**Categorias:** Tecnologia, Jogos, Conhecimentos Gerais e Todos os quizzes
(neste caso o jogador escolhe quantas perguntas quer responder).

**Exemplo de pergunta:**

```
Pergunta 1 de 5:
Quem é o protagonista de God of War?
A) Kratos
B) Dante
C) Leon
D) Link
Sua resposta (A, B, C ou D):
```

## Funcionalidades

- Nome do jogador usado nas mensagens
- Perguntas guardadas em listas e apresentadas com `for`
- Aceita letras maiúsculas e minúsculas
- Repete a pergunta se a resposta for inválida ou vazia
- Mostra a alternativa correta quando o jogador erra
- Pontuação final (ex.: 4 de 5) e mensagem que varia conforme o desempenho
- Extras: perguntas embaralhadas, jogar novamente e ranking da sessão

## Estrutura

```
bin/quiz.dart              programa principal (main)
lib/pergunta.dart          classe Pergunta
lib/banco_perguntas.dart   perguntas por categoria
lib/jogo.dart              leitura de entradas, rodada e ranking
lib/menu_quiz.dart         menu de categorias
```

## Como executar

Dentro da pasta do projeto:

```bash
dart run
```

## Uso de IA

A IA nos ajudou com a forma de organizar o código por classes, laços, para ficar 
funcionando de forma funcional e sem loop. E com certeza na parte de utilizar algumas 
funcionalidades mais eficientes para o nosso código além das propostas nas aulas.

import 'dart:io';

import 'JOGOS.dart';
import 'tecnologia.dart';
import 'Conhecimentos.dart';
import 'quizGeral.dart';

//Feito por Grupo RAUAN Talyson Lopes Dos Santos e JOCILFRAN GABRIEL GOMES DE FRANÇA
void main() {
  print('===== QUIZ =====');

  String nome = '';

  // Cadastro do jogador
  while (nome.isEmpty) {
    stdout.write('Qual é o seu nome? ');
    nome = stdin.readLineSync()?.trim() ?? '';

    if (nome.isEmpty) {
      print('O nome não pode ficar vazio.');
    }
  }

  print('\nOlá, $nome! Vamos começar.');

  // Opção de jogar novamente
  String jogarNovamente;

  do {
    print('\nOlá, $nome! Escolha o Tipo de Quiz');
    print('1 - Tecnologia');
    print('2 - Jogos');
    print('3 - Conhecimentos gerais');
    print('4 - Todos Os quiz');

    stdout.write('\nEscolha uma opção: ');
    String opcao = stdin.readLineSync()?.trim() ?? '';

    // Chama a função responsável por escolher o quiz
    jogar(nome, opcao);

    // Pergunta se deseja jogar novamente
    while (true) {
      stdout.write('\nDeseja jogar novamente? (S/N): ');

      jogarNovamente = stdin.readLineSync()?.trim().toUpperCase() ?? '';

      if (jogarNovamente == 'S' || jogarNovamente == 'N') {
        break;
      }

      print('Digite apenas S ou N.');
    }
  } while (jogarNovamente == 'S');

  print('\nObrigado por jogar, $nome! Até a próxima.');
}

// Função responsável por escolher o quiz
void jogar(String nome, String opcao) {
  switch (opcao) {
    case '1':
      quizTecnologia(nome);
      break;

    case '2':
      quizJogos(nome);
      break;

    case '3':
      quizConhecimentos(nome);
      break;

    case '4':
      quizTodos(nome);
      break;

    default:
      print('\nOpção inválida! Escolha uma categoria de 1 a 4.');
  }
}

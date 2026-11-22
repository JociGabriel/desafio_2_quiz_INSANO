import 'dart:io';

void main() {
  print('===== QUIZ =====');

  String nome = '';
  while (nome.isEmpty) {
    stdout.write('Qual é o seu nome? ');
    nome = stdin.readLineSync()?.trim() ?? '';
    if (nome.isEmpty) {
      print('O nome não pode ficar vazio.');
    }
  }

  print('\nOlá, $nome! Vamos começar.');

  String jogarNovamente;
  do {
    //jogar(nome); criar ainda essa parte pra começar o game

    while (true) {
      stdout.write('\nDeseja jogar novamente? (S/N): ');
      jogarNovamente = stdin.readLineSync()?.trim().toUpperCase() ?? '';
      if (jogarNovamente == 'S' || jogarNovamente == 'N') break;
      print('Digite apenas S ou N.');
    }
  } while (jogarNovamente == 'S');

  print('\nObrigado por jogar, $nome! Até a próxima.');
}
import 'dart:io';

// QUIZ DE CONHECIMENTOS GERAIS
void quizConhecimentos(String nome) {
  int pontos = 0;

  print('\n===== QUIZ DE CONHECIMENTOS GERAIS =====');

  print('\n1) Qual é a capital do Brasil?');
  print('A - São Paulo');
  print('B - Rio de Janeiro');
  print('C - Brasília');

  stdout.write('Resposta: ');
  String resposta = stdin.readLineSync()?.trim().toUpperCase() ?? '';

  if (resposta == 'C') {
    print('Resposta correta!');
    pontos++;
  } else {
    print('Resposta incorreta! A resposta era C.');
  }

  print('\n2) Quantos dias tem uma semana?');
  print('A - 5');
  print('B - 7');
  print('C - 10');

  stdout.write('Resposta: ');
  resposta = stdin.readLineSync()?.trim().toUpperCase() ?? '';

  if (resposta == 'B') {
    print('Resposta correta!');
    pontos++;
  } else {
    print('Resposta incorreta! A resposta era B.');
  }

  print('\n3) Qual é o maior planeta do Sistema Solar?');
  print('A - Terra');
  print('B - Marte');
  print('C - Júpiter');

  stdout.write('Resposta: ');
  resposta = stdin.readLineSync()?.trim().toUpperCase() ?? '';

  if (resposta == 'C') {
    print('Resposta correta!');
    pontos++;
  } else {
    print('Resposta incorreta! A resposta era C.');
  }
}

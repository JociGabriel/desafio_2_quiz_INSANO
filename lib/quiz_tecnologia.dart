import 'dart:io';

// QUIZ DE TECNOLOGIA
void quizTecnologia(String nome) {
  int pontos = 0;

  print('\n===== QUIZ DE TECNOLOGIA =====');

  print('\n1) O que significa CPU?');
  print('A - Central Processing Unit');
  print('B - Computer Personal User');
  print('C - Control Program Unit');

  stdout.write('Resposta: ');
  String resposta = stdin.readLineSync()?.trim().toUpperCase() ?? '';

  if (resposta == 'A') {
    print('Resposta correta!');
    pontos++;
  } else {
    print('Resposta incorreta! A resposta era A.');
  }

  print('\n2) Qual componente é responsável pelo processamento gráfico?');
  print('A - RAM');
  print('B - GPU');
  print('C - SSD');

  stdout.write('Resposta: ');
  resposta = stdin.readLineSync()?.trim().toUpperCase() ?? '';

  if (resposta == 'B') {
    print('Resposta correta!');
    pontos++;
  } else {
    print('Resposta incorreta! A resposta era B.');
  }

  print('\n3) Qual sistema operacional é desenvolvido pela Microsoft?');
  print('A - Linux');
  print('B - macOS');
  print('C - Windows');

  stdout.write('Resposta: ');
  resposta = stdin.readLineSync()?.trim().toUpperCase() ?? '';

  if (resposta == 'C') {
    print('Resposta correta!');
    pontos++;
  } else {
    print('Resposta incorreta! A resposta era C.');
  }

  print('\n===== RESULTADO =====');
  print('$nome, você acertou $pontos de 3 perguntas!');
}

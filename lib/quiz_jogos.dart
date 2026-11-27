import 'dart:io';

void quizJogos(String nome) {
  int pontos = 0;

  print('\n===== QUIZ DE JOGOS =====');

  print('\n1) Qual empresa criou Minecraft?');
  print('A - Nintendo');
  print('B - Mojang');
  print('C - Ubisoft');

  stdout.write('Resposta: ');
  String resposta = stdin.readLineSync()?.trim().toUpperCase() ?? '';

  if (resposta == 'B') {
    print('Resposta correta!');
    pontos++;
  } else {
    print('Resposta incorreta! A resposta era B.');
  }

  print('\n2) Qual é o protagonista de God of War?');
  print('A - Kratos');
  print('B - Dante');
  print('C - Leon');

  stdout.write('Resposta: ');
  resposta = stdin.readLineSync()?.trim().toUpperCase() ?? '';

  if (resposta == 'A') {
    print('Resposta correta!');
    pontos++;
  } else {
    print('Resposta incorreta! A resposta era A.');
  }

  print('\n3) Qual empresa desenvolveu a franquia Resident Evil?');
  print('A - Sony');
  print('B - Capcom');
  print('C - Valve');

  stdout.write('Resposta: ');
  resposta = stdin.readLineSync()?.trim().toUpperCase() ?? '';

  if (resposta == 'B') {
    print('Resposta correta!');
    pontos++;
  } else {
    print('Resposta incorreta! A resposta era B.');
  }

  print('\n===== RESULTADO =====');
  print('$nome, você acertou $pontos de 3 perguntas!');
}
import 'dart:io';

// QUIZ COM TODAS AS CATEGORIAS
void quizTodos(String nome) {
  int pontos = 0;

  // Banco de perguntas das três categorias
  List<Map<String, String>> perguntas = [
    // TECNOLOGIA
    {
      'categoria': 'TECNOLOGIA',
      'pergunta': 'O que significa CPU?',
      'A': 'Central Processing Unit',
      'B': 'Computer Personal User',
      'C': 'Control Program Unit',
      'resposta': 'A',
    },
    {
      'categoria': 'TECNOLOGIA',
      'pergunta': 'Qual componente é responsável pelo processamento gráfico?',
      'A': 'RAM',
      'B': 'GPU',
      'C': 'SSD',
      'resposta': 'B',
    },
    {
      'categoria': 'TECNOLOGIA',
      'pergunta': 'Qual sistema operacional é desenvolvido pela Microsoft?',
      'A': 'Linux',
      'B': 'macOS',
      'C': 'Windows',
      'resposta': 'C',
    },

    // JOGOS
    {
      'categoria': 'JOGOS',
      'pergunta': 'Qual empresa criou Minecraft?',
      'A': 'Nintendo',
      'B': 'Mojang',
      'C': 'Ubisoft',
      'resposta': 'B',
    },
    {
      'categoria': 'JOGOS',
      'pergunta': 'Qual é o protagonista de God of War?',
      'A': 'Kratos',
      'B': 'Dante',
      'C': 'Leon',
      'resposta': 'A',
    },
    {
      'categoria': 'JOGOS',
      'pergunta': 'Qual empresa desenvolveu a franquia Resident Evil?',
      'A': 'Sony',
      'B': 'Capcom',
      'C': 'Valve',
      'resposta': 'B',
    },

    // CONHECIMENTOS GERAIS
    {
      'categoria': 'CONHECIMENTOS GERAIS',
      'pergunta': 'Qual é a capital do Brasil?',
      'A': 'São Paulo',
      'B': 'Rio de Janeiro',
      'C': 'Brasília',
      'resposta': 'C',
    },
    {
      'categoria': 'CONHECIMENTOS GERAIS',
      'pergunta': 'Quantos dias tem uma semana?',
      'A': '5',
      'B': '7',
      'C': '10',
      'resposta': 'B',
    },
    {
      'categoria': 'CONHECIMENTOS GERAIS',
      'pergunta': 'Qual é o maior planeta do Sistema Solar?',
      'A': 'Terra',
      'B': 'Marte',
      'C': 'Júpiter',
      'resposta': 'C',
    },
  ];

  print('\n===== QUIZ COMPLETO =====');
  print('Temos ${perguntas.length} perguntas disponíveis.');

  int quantidade;

  // Escolher quantidade de perguntas
  while (true) {
    stdout.write(
      '\nQuantas perguntas deseja responder? '
      '(1 a ${perguntas.length} ou 0 para todas): ',
    );

    String entrada = stdin.readLineSync()?.trim() ?? '';

    quantidade = int.tryParse(entrada) ?? -1;

    if (quantidade >= 0 && quantidade <= perguntas.length) {
      break;
    }

    print('Digite um número entre 0 e ${perguntas.length}.');
  }

  // Se escolher 0, responde todas
  if (quantidade == 0) {
    quantidade = perguntas.length;
  }

  //Embaralhar as perguntas aleatoriamente
  perguntas.shuffle();

  print('\nVocê responderá $quantidade perguntas!');

  // Apresentar as perguntas
  for (int i = 0; i < quantidade; i++) {
    var pergunta = perguntas[i];

    print('\n===== ${pergunta['categoria']} =====');
    print('\n${i + 1}) ${pergunta['pergunta']}');

    print('A - ${pergunta['A']}');
    print('B - ${pergunta['B']}');
    print('C - ${pergunta['C']}');

    stdout.write('\nResposta: ');

    String resposta = stdin.readLineSync()?.trim().toUpperCase() ?? '';

    if (resposta == pergunta['resposta']) {
      print('Resposta correta!');
      pontos++;
    } else {
      print('Resposta incorreta!');
      print('Resposta correta: ${pergunta['resposta']}');
    }
  }

  // Resultado final
  print('\n===== RESULTADO FINAL =====');
  print('Jogador: $nome');
  print('Perguntas respondidas: $quantidade');
  print('Acertos: $pontos');
  print('Erros: ${quantidade - pontos}');

  double porcentagem = (pontos / quantidade) * 100;

  print('Aproveitamento: ${porcentagem.toStringAsFixed(1)}%');
}

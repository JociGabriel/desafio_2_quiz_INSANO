import 'dart:io';
import 'pergunta.dart';

const List<String> letras = ['A', 'B', 'C', 'D'];

/// Resultado de uma partida, usado no ranking.
class Resultado {
  final String nome;
  final String quiz;
  final int acertos;
  final int total;

  Resultado(this.nome, this.quiz, this.acertos, this.total);

  double get percentual => acertos / total;
}

/// Ranking guardado enquanto o programa está aberto.
final List<Resultado> ranking = [];

/// Pede o nome até o jogador digitar algo.
String lerNome() {
  while (true) {
    stdout.write('Qual é o seu nome? ');
    String nome = stdin.readLineSync()?.trim() ?? '';
    if (nome.isNotEmpty) return nome;
    print('O nome não pode ficar vazio.');
  }
}

/// Pede um número entre [min] e [max] até a entrada ser válida.
int lerNumero(String mensagem, int min, int max) {
  while (true) {
    stdout.write(mensagem);
    int? numero = int.tryParse(stdin.readLineSync()?.trim() ?? '');
    if (numero != null && numero >= min && numero <= max) return numero;
    print('Opção inválida! Digite um número entre $min e $max.');
  }
}

/// Pede S ou N até a entrada ser válida. Retorna true para S.
bool lerSimNao(String mensagem) {
  while (true) {
    stdout.write(mensagem);
    String entrada = stdin.readLineSync()?.trim().toUpperCase() ?? '';
    if (entrada == 'S') return true;
    if (entrada == 'N') return false;
    print('Digite apenas S ou N.');
  }
}

/// Pede A, B, C ou D (maiúsculo ou minúsculo) até ser válido.
String lerResposta() {
  while (true) {
    stdout.write('Sua resposta (A, B, C ou D): ');
    String entrada = stdin.readLineSync()?.trim().toUpperCase() ?? '';

    if (entrada == 'A' || entrada == 'B' || entrada == 'C' || entrada == 'D') {
      return entrada;
    }

    print('Resposta inválida! Digite apenas A, B, C ou D.\n');
  }
}

String mensagemFinal(String nome, int acertos, int total) {
  double percentual = acertos / total;

  if (percentual == 1) {
    return 'Perfeito, $nome! Você acertou tudo!';
  } else if (percentual >= 0.7) {
    return 'Muito bem, $nome! Ótimo desempenho!';
  } else if (percentual >= 0.4) {
    return 'Foi razoável, $nome. Estude mais um pouco e tente de novo!';
  } else {
    return 'Não desanime, $nome. Tente novamente, você consegue!';
  }
}

/// Executa uma rodada: embaralha, apresenta [quantidade] perguntas com `for`,
/// confere as respostas e mostra o resultado. Guarda a partida no ranking.
void jogarRodada(
  String nome,
  String titulo,
  List<Pergunta> perguntas,
  int quantidade,
) {
  int acertos = 0;

  // Cópia embaralhada, para não alterar a lista original.
  var rodada = List<Pergunta>.of(perguntas)..shuffle();
  rodada = rodada.take(quantidade).toList();

  print('\n===== QUIZ: ${titulo.toUpperCase()} =====');
  print('Valendo, $nome! Serão ${rodada.length} perguntas.');

  for (int i = 0; i < rodada.length; i++) {
    var p = rodada[i];

    print('\nPergunta ${i + 1} de ${rodada.length}:');
    print(p.texto);

    for (int j = 0; j < p.alternativas.length; j++) {
      print('${letras[j]}) ${p.alternativas[j]}');
    }

    String resposta = lerResposta();

    if (resposta == p.resposta) {
      print('Acertou, $nome!');
      acertos++;
    } else {
      int indiceCerto = letras.indexOf(p.resposta);
      print('Errou, $nome. A alternativa correta era '
          '${p.resposta}) ${p.alternativas[indiceCerto]}');
    }
  }

  print('\n===== RESULTADO =====');
  print('$nome, você acertou $acertos de ${rodada.length} perguntas.');
  print(mensagemFinal(nome, acertos, rodada.length));

  ranking.add(Resultado(nome, titulo, acertos, rodada.length));
}

/// Mostra os 5 melhores resultados da sessão.
void mostrarRanking() {
  if (ranking.isEmpty) return;

  var ordenado = List<Resultado>.of(ranking)
    ..sort((a, b) => b.percentual.compareTo(a.percentual));

  print('\n===== RANKING =====');
  for (int i = 0; i < ordenado.length && i < 5; i++) {
    var r = ordenado[i];
    print('${i + 1}º ${r.nome} - ${r.acertos}/${r.total} '
        '(${(r.percentual * 100).toStringAsFixed(0)}%) - ${r.quiz}');
  }
}

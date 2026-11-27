import 'banco_perguntas.dart';
import 'jogo.dart';

/// Mostra o menu de categorias e inicia a rodada escolhida.
void jogar(String nome) {
  var categorias = bancoPerguntas.keys.toList();
  int opcaoTodos = categorias.length + 1;

  print('\n$nome, escolha o tipo de quiz:');
  for (int i = 0; i < categorias.length; i++) {
    print('${i + 1} - ${categorias[i]}');
  }
  print('$opcaoTodos - Todos os quizzes');

  int opcao = lerNumero('\nEscolha uma opção: ', 1, opcaoTodos);

  if (opcao == opcaoTodos) {
    var todas = todasAsPerguntas();
    print('\nTemos ${todas.length} perguntas disponíveis.');
    int quantidade = lerNumero(
      'Quantas deseja responder? (1 a ${todas.length}, ou 0 para todas): ',
      0,
      todas.length,
    );
    if (quantidade == 0) quantidade = todas.length;

    jogarRodada(nome, 'Todos os quizzes', todas, quantidade);
  } else {
    String categoria = categorias[opcao - 1];
    var perguntas = bancoPerguntas[categoria]!;

    jogarRodada(nome, categoria, perguntas, perguntas.length);
  }
}

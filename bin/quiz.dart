import 'package:quiz/jogo.dart';
import 'package:quiz/menu_quiz.dart';

void main() {
  print('==========================================');
  print('        QUIZ DART - DESAFIO DOS DEVS      ');
  print('==========================================');
  print('Bem-vindo! Teste seus conhecimentos em');
  print('tecnologia, jogos e cultura geral.\n');

  String nome = lerNome();

  print('\nOlá, $nome! Vamos começar.');

  bool jogarNovamente;
  do {
    jogar(nome);
    mostrarRanking();
    jogarNovamente = lerSimNao('\nDeseja jogar novamente? (S/N): ');
  } while (jogarNovamente);

  print('\nObrigado por jogar, $nome! Até a próxima.');
}

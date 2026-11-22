import 'dart:io';
import 'package:quiz/quiz.dart';

void main(){
  print("===========================================");
  print("SEJA BEM-VINDO CARO JOGADOR");
  print("QUAL O SEU NOME ?");
  String player = stdin.readLineSync()!;
  print("===========================================");
  print("Vamos começar $player ?");
  print("Digite [1]- sim, [2]- não, [3]- sair");
  print("===========================================");
  int? esc = int.tryParse(stdin.readLineSync()!);

  bool escolha = true;
  switch (esc){
    case 1 : escolha = true;
    case 2 : print("Tem certeza?");
    int? certeza = int.tryParse(stdin.readLineSync()!);
    if (certeza == 1){
      print("Saindo...");
      escolha = false;
    } else {
      print("Voltando...");
      escolha = true;
    }
    case 3 : escolha = false;
    default:
  }
}
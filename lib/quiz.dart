class Pergunta {
  String pergunta;
  List <String> alternativas;
  String resposta;

  Pergunta(this.pergunta,this.alternativas, this.resposta);
}

List <Pergunta> perguntas = [
  Pergunta(
      'Qual a linguagem de programação estamos estudando?',
      ['Flutter','JavaScript', 'JAVA', 'Dart'],
      'D'),
  Pergunta(
      'Qual o tipo de variável retorna caracteres?',
      ['List','String', 'int', 'bool'],
      'B'),
  Pergunta(
      'Qual a função do Flutter?',
      ['Linguagem de marcação','Linguagem de programação', 'Framework', 'Emulador'],
      'C'),
  Pergunta(
      'Qual a plataforma o Dart é mais usado?',
      ['Usina Nuclear','Tablet', 'Mobile', 'Desktop'],
      'D'),
  Pergunta(
      'Que dia vence o 2 Desafio da Trilha de Desenvolvimento Mobile?',
      ['30/11','28/11', '23/11', '25/11'],
      'B'),
];
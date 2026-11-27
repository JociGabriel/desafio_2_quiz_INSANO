import 'pergunta.dart';

/// Todas as perguntas, organizadas por categoria.
/// Para criar uma nova categoria ou pergunta, basta editar este mapa.
final Map<String, List<Pergunta>> bancoPerguntas = {
  'Tecnologia': [
    Pergunta(
      'Qual a linguagem de programação que estamos estudando?',
      ['Flutter', 'JavaScript', 'Java', 'Dart'],
      'D',
    ),
    Pergunta(
      'Qual o tipo de variável que guarda caracteres (texto)?',
      ['List', 'String', 'int', 'bool'],
      'B',
    ),
    Pergunta(
      'O que é o Flutter?',
      [
        'Uma linguagem de marcação',
        'Uma linguagem de programação',
        'Um framework',
        'Um emulador',
      ],
      'C',
    ),
    Pergunta(
      'Em qual plataforma o Dart (com Flutter) é mais usado?',
      ['Usina nuclear', 'Tablet de cozinha', 'Mobile', 'Servidor de e-mail'],
      'C',
    ),
    Pergunta(
      'O que significa CPU?',
      [
        'Central Processing Unit',
        'Computer Personal User',
        'Control Program Unit',
        'Central Program Utility',
      ],
      'A',
    ),
    Pergunta(
      'Qual componente é responsável pelo processamento gráfico?',
      ['RAM', 'GPU', 'SSD', 'Fonte'],
      'B',
    ),
    Pergunta(
      'Qual sistema operacional é desenvolvido pela Microsoft?',
      ['Linux', 'macOS', 'Android', 'Windows'],
      'D',
    ),
  ],
  'Jogos': [
    Pergunta(
      'Qual empresa criou o Minecraft?',
      ['Nintendo', 'Mojang', 'Ubisoft', 'Sega'],
      'B',
    ),
    Pergunta(
      'Quem é o protagonista de God of War?',
      ['Kratos', 'Dante', 'Leon', 'Link'],
      'A',
    ),
    Pergunta(
      'Qual empresa desenvolveu a franquia Resident Evil?',
      ['Sony', 'Valve', 'Capcom', 'Epic Games'],
      'C',
    ),
    Pergunta(
      'Qual é o nome do herói da série The Legend of Zelda?',
      ['Zelda', 'Link', 'Ganon', 'Mario'],
      'B',
    ),
    Pergunta(
      'Qual é o nome do encanador mais famoso da Nintendo?',
      ['Sonic', 'Luigi Verde', 'Mario', 'Donkey Kong'],
      'C',
    ),
  ],
  'Conhecimentos Gerais': [
    Pergunta(
      'Qual é a capital do Brasil?',
      ['São Paulo', 'Rio de Janeiro', 'Salvador', 'Brasília'],
      'D',
    ),
    Pergunta(
      'Quantos dias tem uma semana?',
      ['5', '7', '10', '12'],
      'B',
    ),
    Pergunta(
      'Qual é o maior planeta do Sistema Solar?',
      ['Terra', 'Marte', 'Saturno', 'Júpiter'],
      'D',
    ),
    Pergunta(
      'Em que estado fica a cidade de Bacabal?',
      ['Maranhão', 'Piauí', 'Pará', 'Ceará'],
      'A',
    ),
    Pergunta(
      'Qual é o maior oceano do planeta?',
      ['Atlântico', 'Índico', 'Pacífico', 'Ártico'],
      'C',
    ),
  ],
};

/// Junta as perguntas de todas as categorias em uma única lista.
List<Pergunta> todasAsPerguntas() {
  var todas = <Pergunta>[];
  for (var lista in bancoPerguntas.values) {
    todas.addAll(lista);
  }
  return todas;
}

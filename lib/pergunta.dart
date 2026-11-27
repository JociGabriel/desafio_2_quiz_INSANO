/// Guarda uma pergunta, suas 4 alternativas e a letra da resposta certa.
class Pergunta {
  final String texto;
  final List<String> alternativas; // sempre 4: A, B, C e D
  final String resposta; // 'A', 'B', 'C' ou 'D'

  Pergunta(this.texto, this.alternativas, this.resposta);
}

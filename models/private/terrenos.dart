// => * terrenos: floresta, montanha, lago, deserto, cidade, etc.

class Terreno {
  String nome;
  String descricao;
  String imagem;
  Terreno(this.nome, this.descricao, this.imagem);
}

class Floresta extends Terreno {
  Floresta() : super('Floresta', 'Floresta densa e sombria', 'floresta.jpg');
}

class Montanha extends Terreno {
  Montanha() : super('Montanha', 'Montanha alta e fria', 'montanha.jpg');
}

class Lago extends Terreno {
  Lago() : super('Lago', 'Lago gelado e escuro', 'lago.jpg');
}

class Deserto extends Terreno {
  Deserto() : super('Deserto', 'Deserto quente e seco', 'deserto.jpg');
}

class Cidade extends Terreno {
  Cidade() : super('Cidade', 'Cidade grande e movimentada', 'cidade.jpg');
}

class Terrenos {
  static List<Terreno> lista = [
    Floresta(),
    Montanha(),
    Lago(),
    Deserto(),
    Cidade(),
  ];
}

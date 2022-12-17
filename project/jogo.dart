import '../models/NivelMasmorra.dart';
import '../models/Pato.dart';

class Jogo {
  List<Pato> patos;
  List<NivelMasmorra> niveis;
  int nivelAtual = 0;

  void avancarNivel() {
    if (nivelAtual < niveis.length - 1) {
      nivelAtual++;
      niveis[nivelAtual].lutar();
    }
  }

  void carregarPartida(
      List<Pato> patos, List<NivelMasmorra> niveis, int nivelAtual) {
    patos = patos;
    niveis = niveis;
    nivelAtual = nivelAtual;
  }

  void escolherPatos(List<Pato> patos) {
    patos = patos;
  }

  Jogo(this.patos, this.niveis);
}

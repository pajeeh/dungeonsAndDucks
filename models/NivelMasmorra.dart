import 'Monstro.dart';
import 'Pato.dart';

class NivelMasmorra {
  String _nome;
  int _turnos;
  List<Pato> _patos;
  List<Monstro> _monstros;
  List<String> _tesouros;

  NivelMasmorra(
      this._nome, this._turnos, this._patos, this._monstros, this._tesouros);

  void lutar() {
    // TODO: implementar luta
  }

  void encontrarTesouros() {
    _tesouros.add("Tesouro 1");
  }

  bool verificarFimDeJogo() {
// TODO: implementar verificação de fim de jogo

    return false;
  }
}

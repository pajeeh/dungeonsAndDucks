import '../../models/Monstro.dart';

class Medusa implements Monstro {
  int _vida = 100;
  int _forca = 10;
  int _defesa = 10;

  String _habilidadeEspecial = "Olhar petrificante";
  String _item = "Poção de vida";

  int _forcaHEspecial = 20;
  int _pontosItem = 20;

  @override
  void atacar() {
    print("Atacando com força de $_forca de dano");
  }

  @override
  void defender() {
    print("Defendendo com defesa de $_defesa pontos");
  }

  @override
  bool estaVivo() {
    return _vida > 0;
  }

  @override
  void usarHabilidadeEspecial() {
    print("Usando habilidade especial de $_habilidadeEspecial");
    _forca += _forcaHEspecial;
  }

  @override
  void usarItem() {
    print("Usando $_item para recuperar $_pontosItem pontos de vida");
    _vida += _pontosItem;
  }

  @override
  String toString() {
    return "Medusa";
  }
}
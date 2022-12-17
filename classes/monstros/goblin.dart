import '../../models/Monstro.dart';

class Goblin implements Monstro {
  int _vida = 75;
  int _forca = 5;
  int _defesa = 5;

  String _habilidadeEspecial = "Desenganjar e disparar";
  String _item = "Poção de vida";

  int _forcaHEspecial = 10;
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
    return "Goblin";
  }
  
}


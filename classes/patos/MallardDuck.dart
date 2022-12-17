

import '../../models/Pato.dart';
import '../atributosPatos/grasnarNormal.dart';
import '../atributosPatos/vooComAsas.dart';

class MallardDuck extends Pato {
  MallardDuck() : super('', 0) {
    vooBehavior = VooComAsas();
    grasnarBehavior = GrasnarNormal();
  }

  @override
  void exibir() {
    print("--- Pato Selvagem ---");
  }
}



import '../../models/Pato.dart';
import '../atributosPatos/grasnarSilencioso.dart';
import '../atributosPatos/semVoar.dart';

class WoodDuck extends Pato {
  WoodDuck() : super('', 0) {
    vooBehavior = VooSemAsas();
    grasnarBehavior = GrasnarSilencioso();
  }

  @override
  void exibir() {
    print("--- Pato de Madeira ---");
  }
}

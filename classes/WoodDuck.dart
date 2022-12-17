import 'grasnarSilencioso.dart';
import 'pato.dart';
import 'semVoar.dart';

class WoodDuck extends Pato {
  WoodDuck() {
    vooBehavior = VooSemAsas();
    grasnarBehavior = GrasnarSilencioso();
  }

  @override
  void exibir() {
    print("--- Pato de Madeira ---");
  }
}

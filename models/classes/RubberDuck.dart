import 'grasnarSilencioso.dart';
import 'pato.dart';
import 'semVoar.dart';

class RubberDuck extends Pato {
  RubberDuck() {
    vooBehavior = VooSemAsas();
    grasnarBehavior = GrasnarSilencioso();
  }

  @override
  void exibir() {
    print("--- Pato de Borracha ---");
  }
}

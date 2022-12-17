
import '../../models/Pato.dart';
import '../atributosPatos/grasnarSilencioso.dart';
import '../atributosPatos/semVoar.dart';

class RubberDuck extends Pato {
  RubberDuck() : super('', 0) {
    vooBehavior = VooSemAsas();
    grasnarBehavior = GrasnarSilencioso();
  }

  @override
  void exibir() {
    print("--- Pato de Borracha ---");
  }
}

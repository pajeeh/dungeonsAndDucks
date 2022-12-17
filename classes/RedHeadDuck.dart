import 'grasnarAlto.dart';
import 'pato.dart';
import 'vooComAsas.dart';

class RedHeadDuck extends Pato {
  RedHeadDuck() {
    vooBehavior = VooComAsas();
    grasnarBehavior = GrasnarAlto();
  }

  @override
  void exibir() {
    print("--- Pato de Cabeça Vermelha ---");
  }
}

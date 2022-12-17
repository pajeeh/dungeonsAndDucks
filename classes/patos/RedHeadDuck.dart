import '../../models/Pato.dart';
import '../atributosPatos/grasnarAlto.dart';
import '../atributosPatos/vooComAsas.dart';

class RedHeadDuck extends Pato {
  RedHeadDuck() : super('', 0) {
    vooBehavior = VooComAsas();
    grasnarBehavior = GrasnarAlto();
  }

  @override
  void exibir() {
    print("--- Pato de Cabeça Vermelha ---");
  }
}

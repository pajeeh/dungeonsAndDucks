import 'grasnarNormal.dart';
import 'pato.dart';
import 'vooComAsas.dart';

class MallardDuck extends Pato {
  MallardDuck() {
    vooBehavior = VooComAsas();
    grasnarBehavior = GrasnarNormal();
  }

  @override
  void exibir() {
    print("--- Pato Selvagem ---");
  }
}

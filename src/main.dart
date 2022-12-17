
import '../classes/MallardDuck.dart';
import '../classes/RedHeadDuck.dart';
import '../classes/RubberDuck.dart';
import '../classes/WoodDuck.dart';
import '../classes/pato.dart';

void main() {
  List<Pato> patos = [];
  patos.add(MallardDuck());
  patos.add(RubberDuck());
  patos.add(RedHeadDuck());
  patos.add(WoodDuck());

  for (Pato pato in patos) {
    pato.exibir();
    pato.grasnar();
    pato.nadar();
    pato.voar();
    print("");
  }
}

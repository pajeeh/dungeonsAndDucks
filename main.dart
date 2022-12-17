import 'new_class.dart';

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

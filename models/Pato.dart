import '../classes/behaviors/GrasnarBehavior.dart';
import '../classes/behaviors/VooBehavior.dart';

abstract class Pato {
  late VooBehavior vooBehavior;
  late GrasnarBehavior grasnarBehavior;

  Pato(String s, int i);

  void exibir();
  void voar() {
    vooBehavior.voar();
  }

  void grasnar() {
    grasnarBehavior.grasnar();
  }

  void nadar() {
    print("nadando");
  }

  void setVooBehavior(VooBehavior vb) {
    vooBehavior = vb;
  }

  void setGrasnarBehavior(GrasnarBehavior gb) {
    grasnarBehavior = gb;
  }
}

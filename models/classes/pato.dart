import 'GrasnarBehavior.dart';
import 'vooBehavior.dart';

abstract class Pato {
  late VooBehavior vooBehavior;
  late GrasnarBehavior grasnarBehavior;

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

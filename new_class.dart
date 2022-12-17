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

abstract class VooBehavior {
  void voar();
}

class VooComAsas implements VooBehavior {
  void voar() {
    print("Voando com asas!");
  }
}

class VooSemAsas implements VooBehavior {
  void voar() {
    print("Não consigo voar!");
  }
}

abstract class GrasnarBehavior {
  void grasnar();
}

class GrasnarNormal implements GrasnarBehavior {
  void grasnar() {
    print("Quack!");
  }
}

class GrasnarAlto implements GrasnarBehavior {
  void grasnar() {
    print("Big Quack!");
  }
}

class GrasnarSilencioso implements GrasnarBehavior {
  void grasnar() {
    //print("Silence!");
  }
}

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

class WoodDuck extends Pato {
  WoodDuck() {
    vooBehavior = VooSemAsas();
    grasnarBehavior = GrasnarNormal();
  }

  @override
  void exibir() {
    print("--- Pato de Madeira ---");
  }
}
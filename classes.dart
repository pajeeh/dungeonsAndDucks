abstract class Grasnar {
  void fazerGrasnar();
}

class GrasnarNormal implements Grasnar {
  void fazerGrasnar() {
    print("Quack!");
  }
}

class GrasnarAlto implements Grasnar {
  void fazerGrasnar() {
    print("Big Quack!");
  }
}

class GrasnarSilencioso implements Grasnar {
  void fazerGrasnar() {
    //print("Silence!");
  }
}

abstract class Voo {
  void voar();
}

class VooComAsas implements Voo {
  void voar() {
    print("Voando com asas!");
  }
}

class VooSemAsas implements Voo {
  void voar() {
    print("Não consigo voar!");
  }
}

class Pato {
  int id;
  String tipo;
  Grasnar grasnar;
  Voo voo;

  Pato(this.id, this.tipo, this.grasnar, this.voo);
}


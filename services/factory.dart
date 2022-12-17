// --> ToDo : Implementar o padrão de projeto Factory para criar os patos;


import '../classes/patos/MallardDuck.dart';
import '../classes/patos/RedHeadDuck.dart';
import '../classes/patos/RubberDuck.dart';
import '../classes/patos/WoodDuck.dart';
import '../models/Pato.dart';

class Factory {
  Pato criarPatoBorracha() {
    return RubberDuck();
  }

  Pato criarPatoDeMadeira() {
    return WoodDuck();
  }

  Pato criarPatoSelvagem() {
    return MallardDuck();
  }

  Pato criarPatoRedHead() {
    return RedHeadDuck();
  }
}

Factory factory = Factory();
Pato patoBorracha = factory.criarPatoBorracha();

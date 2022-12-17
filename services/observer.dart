// --> Implementar o padrão de projeto Observer para notificar os patos sobre a chegada de um feitiço;

abstract class Observer {
  void update();
}

class Subject{
  List<Observer> _observers = [];

  void addObserver(Observer observer){
    _observers.add(observer);
  }

  void removeObserver(Observer observer){
    _observers.remove(observer);
  }

  void notifyObservers(){
    _observers.forEach((observer) => observer.update());
  }
}

class ConcreteObserver implements Observer{
  Subject _subject;

  ConcreteObserver(this._subject){
    _subject.addObserver(this);
  }

  @override
  void update() {
    print("Notified");
  }
}


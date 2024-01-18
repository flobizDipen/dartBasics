void main() {
  Car car1 = Car(color: "Red", engine: "M1");
  car1.whichColor();

  Car car2 = Car(color: "Blue", engine: "M2");
  car2.whichColor();
  
}

class Car {

  Car({required this.color, required this.engine});

  final String color;
  final String engine;

  void drive() {
    print("car is moving");
  }

  void whichColor() {
    print("car color : $color");
  }
}

void main() {
  Car car1 = Car();
  car1.setColor = "Red";

  Car car2 = Car();
  car2.setColor = "Yellow";

  String colorFromCar1 = car1.color;

  print("Color from car1 : $colorFromCar1");
}

class Car {

  //! attributes 
  late String _color; //Private Modifier.

  //! Setter
  set setColor(String color) {
    _color = color;
  }

  //! Getter
  String get color => _color;

  void drive() {
    print("car is moving");
  }

  void whichColor() {
    print("car color : $_color");
  }
}

void main() {
  //records
  final (first, last) = records();
  print(first);
  print(last);

  final dd = describeDate(DateTime.now());
  print(dd);

  final soundOfAnimal = whatDoesItSound(Sheep());
  print(soundOfAnimal);
}

String describeDate(DateTime dt) => switch (dt.weekday) {
      1 => "Feeling relaxed after weekend",
      6 || 7 => "Weekend Hurray",
      _ => "Hang in there"
    };

(String, String) records() {
  final fn = "Dipen";
  final ln = "Jansari";

  return (fn, ln);
}

String whatDoesItSound(Animal animal) => switch (animal) {
      Cow c => '$c moo',
      Sheep s => '$s say baa',
      Pig p => '$p oink',
      _ => "Unknown"
    };

//! Sealed class explanation
sealed class Animal {}

class Cow extends Animal {}

class Sheep extends Animal {}

class Pig extends Animal {}

class Lion extends Animal {}

//! Interface 
abstract interface class DoSth{
  void myMethod();
}
class WeDoSth implements DoSth{
  
  @override
  void myMethod() {
    // TODO: implement myMethod
  }
}

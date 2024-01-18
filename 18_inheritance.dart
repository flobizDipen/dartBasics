void main() {
  Student s1 = Student();
  s1.setSemester = 2;
  s1.setName = "Hetal";
  s1.setAge = 31;

  Person p1 = Person();
  p1.setName = "Dipen";
  p1.setAge = 32;

  int semester = s1.getSemester;

  print(semester);

  s1.jump();
  s1.study();
  s1.run();
}

mixin Learner {
  void study() {
    print("study");
  }
}

mixin Jumper {
  void jump() {
    print("jump");
  }
}

class Person {
  late String _name;
  late int _age;

  String get getName => this._name;
  int get getAge => this._age;

  set setName(String name) {
    this._name = name;
  }

  set setAge(int age) {
    this._age = age;
  }

  void run() {
    print('$_name runs!');
  }
}

class Student extends Person with Jumper, Learner {
  late int _semester;

  int get getSemester => this._semester;

  set setSemester(int semester) {
    this._semester = semester;
  }

  void party() {
    print("$_name is on the party");
  }
}

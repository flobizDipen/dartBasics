void main() {
  print("Start");
  int number1 = 4;
  int number2 = 5;
  int result = add(num1: number1, num2: number2);
  print("$result");
}

int add({required int num1, required int num2}) {
  int result = num1 + num2;
  return result;
}

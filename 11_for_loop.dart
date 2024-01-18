void main() {
  List<int> numberList = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10];
  List<int> secondList = [];

  for (int i = 0; i < numberList.length; i++) {
    if (numberList[i] % 3 == 0) secondList.add(numberList[i]);

    print("List Element : ${numberList[i]}");
  }

  print("List Second : $secondList");
}

void main() {
  List<int> list = [1, 2, 3, 4, 5, 6, 7];
  list.forEach((element) {
    if (element % 2 == 0) print(element);
  });
}

void main() {
  // List Example
  List exampelist = [1, 2, 3, 4];
  for (var i in exampelist) {
    print(i);
  }
  exampelist.add("value");
  print(exampelist);

  //Map Example
  Map<String, int> exampleMap = {"key1": 1, "key2": 2, "key3": 3, "key4": 4};
  print(exampleMap);
  print(exampleMap["key2"]);
}

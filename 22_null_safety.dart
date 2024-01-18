void main() {
  int nonNullable = 10; //This value can not be null.
  int? nullable = null; //This value can be null.
  //nullable = 10;

  late String description;
  description = 'description'; //initialized.
  print(description);

  int value = nullable!; //Forcefully unwrapped the value.

  int value2 = nullable ?? 1; //if null then take 1.

  String? nullableString = null;
  int stringLength = nullableString?.length ?? 0;
}

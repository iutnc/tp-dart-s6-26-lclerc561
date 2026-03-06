void main() {
  //Number
  int price1 = 10;
  double price2 = 20.5;
  print("prix 1:" + price1.toString() + " prix 2:" + price2.toString());
  var sum = price1 + price2;
  print("la somme est:" + sum.toString());
  print("type de sum:" + sum.runtimeType.toString());
  int sumEnEntier = sum.toInt();
  print("la somme en entier est:" + sumEnEntier.toString());
  const String strseven = "7";
  final int numseven = int.parse(strseven);
  print("strseven:" + strseven + " numseven:" + numseven.toString());
}

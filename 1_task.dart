void main() {
  // task 1
  // mathOperators();

  // task 2
  // equalityOperators();

  // task 3
  logicalOperators();
}

void mathOperators() {
  double width = 18.4;
  double height = 10.9;
  int oneSquareWidth = 1;
  int oneSquareHeight = 1;
  int oneSquare = oneSquareWidth * oneSquareHeight;

  print('Периметр = ${(width + height) * 2}');
  print('Площа = ${width * height}');
  print('Повних квадратів у площині = ${width * height ~/ oneSquare}');
}

void equalityOperators() {
  var number = 180;

  print('Чи більше число за 50: ${number > 50}');
  print('Чи менше число за 100: ${number < 100}');
  print('Чи ділиться число на 5 без залишку: ${(number % 5) == 0}');
}

void logicalOperators() {
  bool hasMoney = true;
  // bool hasMoney = false;
  bool isStoreOpen = true;
  // bool isStoreOpen = false;

  print('Чи можна зробити покупку: ${hasMoney && isStoreOpen}');
  print('Чи потрібно почекати: ${!isStoreOpen || !hasMoney}');
}

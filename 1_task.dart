void main() {
  // task 1
  // mathOperators();

  // task 2
  // equalityOperators();

  // task 3
  // logicalOperators();

  // task 4
  // ternaryOperator();

  // task 5
  // assignmentOperators();

  // task 6
  // ifElseConstruction();

  // task 7
  // switchStatementConstruction();

  // task 8
  forLoopConstruction();
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

void ternaryOperator() {
  int temperature = 9;
  bool whatIsTemp = temperature > 25;
  bool isCold = !whatIsTemp && (temperature < 10);

  whatIsTemp ? print('Тепло') : print('Прохолодно');
  isCold ? print('Дуже холодно') : print('Прохолодно');
}

void assignmentOperators() {
  double score = 0;
  int correctAnswers = 17;
  int mistakes = 3;
  int totalQuestions = 20;

  score += 10 * correctAnswers;
  score -= 5 * mistakes;
  score *= 2;
  score /= totalQuestions;

  print('Остаточний результат: $score');
}

void ifElseConstruction() {
  int examScore = 56;
  // int examScore = 120;

  if (examScore >= 0 && examScore <= 100) {
    if (examScore > 90) {
      print('Відмінно! Оцінка: $examScore');
    } else if (examScore >= 75) {
      print('Добре! Оцінка: $examScore');
    } else if (examScore >= 60) {
      print('Задовільно. Оцінка: $examScore');
    } else if (examScore >= 20) {
      print('Не здано. Оцінка: $examScore');
    } else {
      print('Повторити курс. Оцінка: $examScore');
    }
  } else {
    print('Упс... помилка. Невірне значення оцінки. ');
  }
}

void switchStatementConstruction() {
  int dayNumber = 7;

  switch (dayNumber) {
    case 1:
      print('Понеділок');
    case 2:
      print('Вівторок');
    case 3:
      print('Середа');
    case 4:
      print('Четвер');
    case 5:
      print('Пʼятниця!');
    case 6:
      print('Субота');
      print('Вихідний день 🎉');
    case 7:
      print('Неділя');
      print('Вихідний день 🎉');
    // // GPT version
    // case 6:
    // case 7:
    //   print(dayNumber == 6 ? 'Субота' : 'Неділя');
    //   print('Вихідний день 🎉');
    default:
      print('Невірний номер дня');
  }
}

void forLoopConstruction() {
  List<int?> result1 = [];
  List<int?> result2 = [];
  int result3 = 0;

  for (var i = 0; i < 10; i++) {
    result1.add(i + 1);
  }

  for (var i = 0; i < 10; i++) {
    if ((i + 1) % 2 == 0) {
      result2.add(i + 1);
    }
  }

  for (var i = 0; i < 10; i++) {
    result3 += i + 1;
  }

  // Чи краще запускати цикл так:
  // for (var i = 1; i <= 10; i++)
  // Щоб уникнути (i + 1) в обчисленнях?

  print('Всі числа від 1 до 10: $result1');
  print('Тільки парні числа: $result2');
  print('Сума чисел від 1 до 10: $result3');
}

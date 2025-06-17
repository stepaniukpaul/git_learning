// 🧩 Задача: Аналіз класу учнів

// У класі є список учнів. Для кожного учня зберігається:
// 	•	ім’я (тип String),
// 	•	вік (тип int),
// 	•	середній бал (тип double),
// 	•	чи відвідував факультативи (тип bool).

// 📋 Завдання:
// 	1.	Створи список із щонайменше 5 учнів (використай список зі словниками або клас).
// 	2.	Обчисли:
// 	•	кількість учнів, які мають середній бал вище 8.5;
// 	•	середній вік учнів;
// 	•	чи є хоча б один учень, який не відвідує факультативи;
// 	3.	Виведи список учнів, імена яких містять літеру "а", та їхній бал.
// 	4.	Використай цикл для виводу кожного учня у форматі:
//   Імʼя: Петро, Вік: 15, Бал: 9.2, Факультативи: так
//  5.	Якщо середній бал нижче 6 — виведи попередження:
//   "Увага: учень [Імʼя] має низький середній бал!"

// 🔧 Для розв’язання ти використаєш:
// 	•	типи: String, int, double, bool, List, Map (або class);
// 	•	оператори: >, <, ==, &&, ||, !, арифметичні;
// 	•	цикли: for або for-in;
// 	•	умовні оператори: if, else, continue.

void main() {
  List<Map<String, dynamic>> students = [
    {'Name': 'Boris', 'Age': 24, 'Average score': 6, 'Attend electives': true},
    {'Name': 'Rick', 'Age': 22, 'Average score': 7.5, 'Attend electives': true},
    {'Name': 'Stan', 'Age': 23, 'Average score': 8.6, 'Attend electives': true},
    {'Name': 'Li', 'Age': 26, 'Average score': 6.4, 'Attend electives': true},
    {
      'Name': 'Valerii',
      'Age': 25,
      'Average score': 8.7,
      'Attend electives': true,
    },
    {
      'Name': 'Leonid',
      'Age': 24,
      'Average score': 9.4,
      'Attend electives': true,
    },
    {
      'Name': 'Fedor',
      'Age': 23,
      'Average score': 7.4,
      'Attend electives': true,
    },
    {
      'Name': 'Serhii',
      'Age': 22,
      'Average score': 8.5,
      'Attend electives': true,
    },
  ];

  int globalAverageScore = 0;
  double middleAge = 0;
  int studentsCount = 0;
  bool isElectives = false;
  List<String?> notAttendElectives = [];
  double middleAverageScore = 5;
  bool isNameWithA = false;
  // type 'int' is not a subtype of type 'double' -- error Map<String?, double> studentsNameWithA = {}; якщо передається ціле число
  Map<String?, dynamic> studentsNameWithA = {};
  String searchLetter = "q";
  bool isAverageScore = false;
  List<String?> lowAverageScore = [];

  for (var student in students) {
    // кількість учнів, які мають середній бал вище 8.5 -- обчислення
    if (student['Average score'] > 8.5) {
      globalAverageScore++;
    }

    // середній вік учнів -- обчислення
    middleAge += student['Age'];
    studentsCount++;

    // чи є хоча б один учень, який не відвідує факультативи -- обчислення
    if (!student['Attend electives']) {
      isElectives = true;
      notAttendElectives.add(student['Name']);
    }

    // список учнів, імена яких містять літеру searchLetter, та їхній бал -- обчислення
    // .split("") - я загуглив
    for (var letter in student['Name'].split("")) {
      if (letter == searchLetter) {
        isNameWithA = true;
        studentsNameWithA[student['Name']] = student['Average score'];
      }
    }

    // якщо середній бал нижче middleAverageScore -- обчислення
    if (student['Average score'] < middleAverageScore) {
      isAverageScore = true;
      lowAverageScore.add(student['Name']);
    }

    // вивід кожного учня у форматі: Імʼя: Петро, Вік: 15, Бал: 9.2, Факультативи: так
    print(
      'Імʼя: ${student['Name']}, Вік: ${student['Age']}, Бал: ${student['Average score']}, Факультативи: ${(student['Attend electives']) ? 'так' : 'ні'}',
    );
  }

  // кількість учнів, які мають середній бал вище 8.5 -- вивід
  print('\nВгрупі $globalAverageScore студентів мають бал вище за 8.5');

  // середній вік учнів -- вивід
  middleAge = middleAge / studentsCount;
  print('\nСередній вік студентів в групі - $middleAge');

  // чи є хоча б один учень, який не відвідує факультативи -- вивід
  (isElectives)
      ? print(
          '\nВ групі є студенти, які не відвідують факультативи. Це: $notAttendElectives',
        )
      : print('\nВсі студенти в групі відвідують факультативи 🎉');

  // якщо середній бал нижче 6 -- вивід
  (isAverageScore)
      ? print(
          '\nУвага: в групі є студенти, середній бал яких меньший $middleAverageScore. Це: $lowAverageScore',
        )
      : print(
          '\nВсі студенти в групі мають середній бал вище $middleAverageScore 👍',
        );

  // список учнів, імена яких містять літеру searchLetter, та їхній бал -- вивід
  if (searchLetter != "") {
    (isNameWithA)
        ? print(
            '\nСписок студентів в імені яких є літера "$searchLetter" та їх середній бал: $studentsNameWithA',
          )
        : print(
            '\nВ групі немає студентів в імені яких є літера "$searchLetter"',
          );
  }
}

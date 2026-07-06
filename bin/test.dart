// ignore_for_file: non_constant_identifier_names

import 'dart:io';

void main() {
  /* 
  stdout.writeln('Введите первое число');
  final num1 = stdin.readLineSync() ?? '';
  stdout.writeln('Введите второе число');
  final num2 = stdin.readLineSync() ?? '';
  
  int? intA = int.tryParse(num1);
  int? intB = int.tryParse(num2); 

  if (intA != null && intB != null) {   
    int sum = intA + intB;
    print('$sum');
  } else {
    print("Неправильное значение");
  }
*/

  /*
  final word = stdin.readLineSync() ?? '';

  if (word == 'true') {
    print('Правда');
  } else if (word == 'false') {
    print('Ложь');
  } else {
    print('Неправильное значение');
  }

*/

  /*
int num1 = int.tryParse(stdin.readLineSync() ?? '') ?? 0;

if (num1 == 0) {
  print('Неправильное значение');
} else {
  print('${num1 + 1}');
  print('${num1 - 1}');
}
*/

  /*
String name = stdin.readLineSync() ?? '';
int age = int.tryParse(stdin.readLineSync() ?? '') ?? 0;

if (age == 0 || name == '') {
  print('Неправильное значение');
} else {
print('Привет, $name! Вам $age лет.');
}

*/

  /*
final simbol = stdin.readLineSync() ?? '';

if (simbol.trim() == '') {
  print('Неправильное значение');
} else if (simbol == '*') {
  print('${simbol * 5}\n' * 5);
} else {
  print('${simbol * 4}\n' * 4);
}

*/

  /*
int simbol = int.tryParse(stdin.readLineSync() ?? '') ?? 0;

if (simbol == 0) {
  print('Неправильное значение');
} else {
  String text = 'Привет мир';
  print('$text\n' * simbol);
}

*/

  /*

final word = stdin.readLineSync() ?? '0';

if (word.trim() == '0') {
  print('Неправильное значение');
  return;
} 

int summ = 0;

List<String> splitinput = word.split('');

for (final sim in splitinput) {
  int num = int.tryParse(sim) ?? 0;
  summ += num;
}

if (summ == 0) {
  print('Цифр не найдено'); 
} else {
  print(summ);
}

*/

  /*
  final pass1 = stdin.readLineSync() ?? '';
  final pass2 = stdin.readLineSync() ?? '';

  if (pass1.length < 6) {
    print('Пароль должен быть не меньше 6 символов');
  } else if (pass1 != pass2) {
    print('Пароли не равны');
  } else {
    print('Успешная операция');
  }
*/

  /*
  const List<String> names = [
    'Yura',
    'Dima',
    'Vika',
    'Masha',
    'Vova',
    'Nikita',
    'Vlad',
    'Petya',
    'Kolya',
    'Vasya',
    'Sveta',
    'Oleg',
    'Alex',
    'Alexey',
    'Sergey',
    'Pavel',
    'Ivan',
    'Igor',
    'Vladimir',
    'Alexandr',
    'Andrey',
    'Egor',
    'Maksim',
  ];

  int pass1 = int.tryParse(stdin.readLineSync() ?? '') ?? 0;

  if (pass1 == 0) {
    print('Неверные данные');
  } else if (names.length < pass1) {
    print('Превышено количество элементов');
  } else {
    List<String> newlist = names.sublist(pass1-1);

    newlist.forEach(print);

  }
*/

  /*
  int numSM = int.tryParse(stdin.readLineSync() ?? '') ?? 0;
  if (numSM == 0) {
    print('Неправильное значение');
  } else {

    double numM = numSM / 100;

    if (numM.toInt() == numM) {
      print('${numM.toInt()} метр');
    } else {
      print('$numM метр');
    }
  }

*/

  /*
  String number = stdin.readLineSync() ?? '';

  int numberInt = int.tryParse(number) ?? 0;

  if (numberInt == 0) {
    print('Неправильное значение');
    return;
  }

  if (number.length >= 10) {
    print('Слишком большое число');
    return;
  }

  List<String> numbers = number.split('');
  int Summ = 0;
  
  for (final numStr in numbers) {

    int num = int.tryParse(numStr) ?? 0;
    Summ += num;
  }

  print('Сумма:$Summ');
*/

  /*
  String text = stdin.readLineSync() ?? '';

  if (text == '') {
    print('Неправильное значение');
    return;
  }

  List<String> textList = text.split('');

  List<String> newList = textList.reversed.toList();

  print(newList.join());
*/

  /*
  String text = stdin.readLineSync() ?? '';

  if (text == '') {
    print('Неправильное значение');
    return;
  }

  List<String> textList = text.split('');
  List<String> textListNew = [];

  for (text in textList) {
    if (textListNew.isNotEmpty && text == textListNew.last) {
      continue;
    } else {
      textListNew.add(text);
    }
  }

  print(textListNew.join());
  print('Hello');
*/

  /*
  const List<String> names = [
    'Yura',
    'Dima',
    'Vika',
    'Masha',
    'Vova',
    'Nikita',
    'Vlad',
    'Petya',
    'Kolya',
    'Vasya',
    'Sveta',
    'Oleg',
    'Alex',
    'Alexey',
    'Sergey',
    'Pavel',
    'Ivan',
    'Igor',
    'Vladimir',
    'Alexandr',
    'Andrey',
    'Egor',
    'Maksim',
  ];

  String text = stdin.readLineSync() ?? '';

  if (text.isEmpty || int.tryParse(text) != null) {
    print('Неправильное значение');
    return;
  }

  List<String> NewNames = [];

  for (var word in names) {
    if (word.contains(text.toLowerCase()) || word.contains(text.toUpperCase())) {
      NewNames.add(word);
    }
  }

  if (NewNames.isEmpty) {
    print('Пользователи не найдены');
  } else {
    NewNames.forEach(print);
  }
*/

  //  print(checkValidAge(17, true, 18));

  /*
  final a = stdin.readLineSync() ?? '';
  final b = stdin.readLineSync() ?? '';
  try {
    sum(a, b);
    print('Конец программы');
  } catch (error) {
    print('Конец программы');
  } finally {
    print('Конец программы');
  }
*/

  /*
  int count = 1;

  do {
    if (count == 5) {
      print('Достигнуто число 5, завершаем выполнение');
      break;
    }

    print('Текущее значение count: $count');
    count += 2;
  } while (count <= 10);

  print('Цикл завершен');
*/

  /*
  try {
    
    int num1 = int.parse(stdin.readLineSync()!);
    int num2 = int.parse(stdin.readLineSync()!);
    int num3 = int.parse(stdin.readLineSync()!);

    if (num1 + num2 > num3 && num1 + num3 > num2 && num3 + num2 > num1) {
      print('Треугольник существует');
    } else {
      print('Треугольник не существует');
    }
  } catch (e) {
    print('Неверный операнд');
    return;
  }

*/

  // ignore: no_leading_underscores_for_local_identifiers
  const _phoneBook = <String, int>{
    'Yura': 1234567,
    '123456799': 123456799,
    'Dima': 3456789,
    'Vika': 4567890,
    'Masha': 5678901,
    '6789012': 6789012,
    'Vova': 7890123,
    '8901234': 8901234,
    'Nikita': 9012345,
    'Vlad': 6789013,
    'Petya': 23456789,
    'Kolya': 34567890,
    'Vasya': 45678901,
    '56789012': 56789012,
    'Sveta': 67890123,
  };

  final a = int.tryParse(stdin.readLineSync() ?? '') ?? 0;

  if (a == 0) {
    print('Неверные данные');
    return;
  }

  String name = _phoneBook.entries
      .firstWhere(((element) => element.value == a), orElse: () => const MapEntry('', 0),)
      .key;

  if (name == '') {
    print('Номер телефона не найден');
  } else if (int.tryParse(name) == null) {
    print(name);
  } else {
    print('Ошибочная запись');
  }
}

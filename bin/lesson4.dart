import 'dart:io';

const _phoneBook = {
  'Yura': 1234567,
  'Alex': 2345678,
  'Dima': 3456789,
  'Vika': 4567890,
  'Masha': 5678901,
  'Sasha': 6789012,
  'Vova': 7890123,
  'Maks': 8901234,
  'Nikita': 9012345,
  'Vlad': 12345678,
  'Petya': 23456789,
  'Kolya': 34567890,
  'Vasya': 45678901,
  'Misha': 56789012,
  'Sveta': 67890123,
};

void main() {
  final names = stdin.readLineSync() ?? '';

  if (names.isEmpty) {
    print('Неверные данные');
    return;
  }

  final namesSet = <String>{};

  List<String> namesList = names.split(',');

  for (var name in namesList) {
    if (_phoneBook.containsKey(name)) {
      namesSet.add('$name: ${_phoneBook[name]}');
    }
  }

  if (namesSet.isNotEmpty) {
    for (var name in namesSet) {
      print(name);
    }
  } else {
    print('Пользователи не найдены');
  }
}

import 'dart:io';

void main(List<String> arguments) {
  /// Меню

  print('1. Новая игра');
  print('2. Загрузить игру');
  print('3. Выйти');

  print('\n');

  /// Пока, мы только будем запускать новую игру...
  print('Введите необходимый пункт: ');
  final int menu = int.tryParse(stdin.readLineSync() ?? "0") ?? 0;

  if (menu <= 0 || menu > 3) {
    print('Вы ввели не правильный пункт меню!');
  } else if (menu == 1) {
    print('Новая игра...');

    /// Имя главного героя
    print('Введите имя главного героя:');
    final name = stdin.readLineSync();

    /// Класс главного героя
    print('Введите название класса: ');
    final typeHero = stdin.readLineSync();
    print('$name Добро пожаловать в мир Меча и Магии');
    print('Ваш класс $typeHero');
    print('Игра началась...');
  } else if (menu == 2) {
    print('Загрузить игру...');
  } else if (menu == 3) {
    print('Выходим из игры...');
  }
}

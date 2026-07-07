import 'dart:io';

import 'package:swords_and_magic/features/menu/exit_game.dart';

void gameCore() {
  // Считываем данные из консоли
  final inputData = stdin.readLineSync();
  // Если введена команда exit, выходим из игры
  if (inputData == 'exit') {
    exitGame();
  }
}
import 'dart:convert';
import 'dart:io';

import 'package:swords_and_magic/features/player/player_consts.dart';
import 'package:swords_and_magic/features/player/player_entity.dart';
import 'package:swords_and_magic/swords_and_magic.dart';

/// Выход из игры
void exitGame() {
  
  // Создаем файл
  final file = File(PlayerConst.playerEntityJson);
  
  // Создаем json из playerEntity

  try {
    final json = jsonEncode(playerEntity);
  
    // Записываем json в файл
    file.writeAsString(json);
    // Выводим сообщение о успешном сохранении
    print("Игра успешно сохранена");
  } on Object catch (err, st) {
    // Выводим сообщение об ошибке
    print("Ошибка сохранения: $err, $st");
  }
  
  print('Выходим из игры...');
  isRunGame = false;
}

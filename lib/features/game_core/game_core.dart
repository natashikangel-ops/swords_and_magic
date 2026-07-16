import 'dart:convert';
import 'dart:io';

import 'package:swords_and_magic/features/player/player_consts.dart';
import 'package:swords_and_magic/features/player/player_entity.dart';

final class GameCore {
  PlayerEntity? playerEntity;

  GameCore({required this.playerEntity});

  void startGame() {
    print("Игра началась...");
    print(
      '${playerEntity?.playerName} Добро в мир Меча и Магии',
    ); // Обращение через класс
    print('Ваш класс ${playerEntity?.playerClass}'); // Обращение через класс

    // Считываем данные из консоли
    final inputData = stdin.readLineSync();
    // Если введена команда exit, выходим из игры
    if (inputData == 'exit') {
      exitGame();
    }
  }

  void exitGame() async {
    // Создаем файл
    final file = File(PlayerConst.playerEntityJson);
    // Создаем json из playerEntity
    final json = jsonEncode(playerEntity?.toJson());
    print("Игра сохраняется...");
    await file
        .writeAsString(json)
        .then((_) {
          // Выводим сообщение о успешном сохранении
          print("Игра успешно сохранена");
        })
        .onError((error, stackTrace) {
          // Выводим сообщение об ошибке
          print("Ошибка сохранения: $error, $stackTrace");
        });

    print("Выход из игры");
  }

  void loadGame() async {
    // Создаем файл
    final file = File(PlayerConst.playerEntityJson); // Обращение через класс

    print("Игра загружается...");
    // Читаем json из файла
    await file
        .readAsString()
        .then((value) {
          // Получаем Map из json
          final data = jsonDecode(value) as Map<String, dynamic>;
          // Получаем сущность из карты
          playerEntity = PlayerEntity.fromJson(data);
          // Выводим сообщение об успешном загрузке
          print("Игра успешно загружена...");
          startGame();
        })
        .onError((error, stackTrace) {
          print("Отсутствуют сохранения");
          newGame();
        });
  }

  void newGame() {
    print('Новая игра...');

    /// Имя главного героя
    print('Введите имя главного героя:');
    final name = stdin.readLineSync();

    /// Класс главного героя
    print('''
Выберите класс игрока, введите число от 1 до 3: 
1.Воин
2.Паладин
3.Маг
''');
    final typeHero = stdin.readLineSync();

    playerEntity = PlayerEntity.create(
      inPlayerName: name ?? '',
      inPlayerClass: typeHero ?? '',
    );

    // Запускаем ядро игры
    startGame();
  }
}

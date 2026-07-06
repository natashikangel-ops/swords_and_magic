import 'package:swords_and_magic/features/player/player_consts.dart';

final playerEntity = <String, dynamic>{};

final _playerWarrior = <String, dynamic>{
  playerName: 'Warrior${DateTime.now().millisecondsSinceEpoch}',
  playerClass: warriorClass,
  power: 10.0,
  protection: 10.0,
  lives: 100.0,
};

final _playerPaladin = <String, dynamic>{
  playerName: 'Paladin${DateTime.now().millisecondsSinceEpoch}',
  playerClass: paladinClass,
  power: 0.0,
  protection: 0.0,
  lives: 100.0,
  spells: <String>{},
};

final _playerMagic = <String, dynamic>{
  playerName: 'Magic${DateTime.now().millisecondsSinceEpoch}',
  playerClass: magicClass,
  power: 0.0,
  protection: 0.0,
  lives: 100.0,
  mana: 100.0,
  spells: <String>{},
};

void initPlayer({required String inPlayerName, required String inPlayerClass}) {
  switch (inPlayerClass) {
    case '2':
      playerEntity.addAll(_playerPaladin);
    case '3':
      playerEntity.addAll(_playerMagic);
    default:
      playerEntity.addAll(_playerWarrior);
  }
  if (inPlayerName != '') {
    playerEntity[playerName] = inPlayerName;
  }
}

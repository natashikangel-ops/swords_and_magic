
import 'package:swords_and_magic/features/player/player_consts.dart';
import 'package:swords_and_magic/features/spells/spells_const.dart';
import 'package:swords_and_magic/interfaces/i_entity.dart';

late PlayerEntity playerEntity;

class PlayerEntity implements IEntity {
  @override
  double lives;

  @override
  double mana;

  @override
  String playerClass;

  @override
  String playerName;

  @override
  double power;

  @override
  double protection;

  @override
  List<String> spells;

  /// Приватный конструктор
  /// Для запрета создания объекта из конструктора
  PlayerEntity._({
    required this.lives,
    required this.mana,
    required this.playerClass,
    required this.playerName,
    required this.power,
    required this.protection,
    required this.spells,
  });

  /// Именованный конструктор
  /// Для создания объекта из файла json
  factory PlayerEntity.fromJson(Map<String, dynamic> json) {
    final Iterable listSpellsMap = json[PlayerConst.spells];
    final List<String> resList = listSpellsMap.map((e) => e).toList().cast();
    return PlayerEntity._(
      spells: resList,
      lives: json[PlayerConst.lives],
      mana: json[PlayerConst.mana],
      playerClass: json[PlayerConst.playerClass],
      playerName: json[PlayerConst.playerName],
      power: json[PlayerConst.power],
      protection: json[PlayerConst.protection],
    );
  }
  
  /// Преобразовывает объект в json
  Map<String, dynamic> toJson() {
    return {
      PlayerConst.lives: lives,
      PlayerConst.mana: mana,
      PlayerConst.playerClass: playerClass,
      PlayerConst.playerName: playerName,
      PlayerConst.power: power,
      PlayerConst.protection: protection,
      PlayerConst.spells: spells,
    };
  }

  /// Именованный конструктор, для создания объекта.
  factory PlayerEntity.create({
    required String inPlayerName,
    required String inPlayerClass,
  }) {
    switch (inPlayerClass) {
      case "2":
        return PlayerEntity._(
            lives: 100.0,
            mana: 50.0,
            playerClass: PlayerConst.paladinClass,
            playerName: inPlayerName.isEmpty
                ? 'Paladin${DateTime.now().millisecondsSinceEpoch}'
                : inPlayerName,
            power: 50.0,
            protection: 50.0,
            spells: [
              SpellsConst.skyflare,
              SpellsConst.tendrilex,
              SpellsConst.stormix
            ]);
      case "3":
        return PlayerEntity._(
            lives: 100.0,
            mana: 100.0,
            playerClass: PlayerConst.magicClass,
            playerName: inPlayerName.isEmpty
                ? 'Magical${DateTime.now().millisecondsSinceEpoch}'
                : inPlayerName,
            power: 0.0,
            protection: 20.0,
            spells: [
              SpellsConst.earthlynx,
              SpellsConst.aquasphere,
              SpellsConst.sunweave,
              SpellsConst.typhunex,
              SpellsConst.whirlora
            ]);

      default:
        return PlayerEntity._(
          lives: 100.0,
          mana: 0,
          playerClass: PlayerConst.warriorClass,
          playerName: inPlayerName.isEmpty
              ? 'Warrior${DateTime.now().millisecondsSinceEpoch}'
              : inPlayerName,
          power: 100.0,
          protection: 100.0,
          spells: [],
        );
    }
  }
}


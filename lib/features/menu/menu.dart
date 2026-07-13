final class Menu {
  /// Метод, для отображения меню
  void showMenu() {
    print('1.Новая игра');
    print('2.Загрузить игру');
    print('3.Выйти');

    print('\n');
  }

  /// Проверяем на правильность ввода пункта меню
  bool _checkEnter(int menu) {
    return menu < 0 || menu > 3;
  }

  /// Метод, для входа в меню
  /// @param menuItem - выбранный пункт меню
  /// @param isStartNewGame - обратный вызов функции для запуска новой игры
  /// @param isLoadGame - обратный вызов функции для загрузки игры
  /// @param isExitGame - обратный вызов функции для выхода из игры
  void enterMenu({
    required final int menuItem,
    required final Function() isStartNewGame,
    required final Function() isLoadGame,
    required final Function() isExitGame,
  }) {
    if (_checkEnter(menuItem)) {
      print('Вы ввели не правильный пункт меню!');
    } else if (menuItem == 1) {
      isStartNewGame();
    } else if (menuItem == 2) {
      isLoadGame();
    } else if (menuItem == 3) {
      isExitGame();
    }
  }
}

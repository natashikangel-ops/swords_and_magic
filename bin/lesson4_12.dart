import 'dart:io';

void main() {
  // readFile('test.txt');
  // writeFile('new.txt');
  addNewString('new.txt');
}

void addNewString(String path) {
  try {
    RandomAccessFile file = File(path).openSync(mode: FileMode.append);
    file.writeStringSync("\nЯ новая добавленная строка");
    file.closeSync();
    print('Содержимое файла ${file.path}:');
    print(file.toString());
  } catch (e) {
    print('Ошибка чтения файла: $e');
  }
}

void writeFile(String path) {
  try {
    File file = File(path);

    file.writeAsString('Я очень крутая');

    print('Содержимое файла ${file.path}:');
    print(file);
  } catch (e) {
    print('Ошибка чтения файла: $e');
  }
}

void readFile(String path) {
  try {
    File file = File(path);

    // синхронное чтение
    // String content = file.readAsStringSync();
    // Uint8List content = file.readAsBytesSync();
    List<String> content = file.readAsLinesSync();

    print('Содержимое файла $path:');
    print(content);
  } catch (e) {
    print('Ошибка чтения файла: $e');
  }
}

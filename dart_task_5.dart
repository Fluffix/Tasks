import 'dart:io';

void main() async {
  //Задача 1:
  await getString().then((inputString) => print('Вы ввели: $inputString'));
  getStringStream().listen((inputString) {
    print('Введена строка: $inputString');
  });
}

/*Задача 1: Используя Future.
1)Напишите функцию, которая считывает данные с клавиатуры.
Функция должна возвращать Future.
2)Напишите код, который дожидается выполнения функции и распечатывает на
консоль "Введена строка stroke_name".
3)Поэкспериментируйте с async/await и then
*/
Future<String> getString() {
  stdout.write('Введите данные: ');
  String input = stdin.readLineSync().toString();
  return Future.value(input);
}

/*Задача 2: Используя Stream.
1)Напишите функцию, которая считывает данные с клавиатуры до тех пор,
пока не будет введен строка "exit". Функция должна возвращать Stream.
2)Напишите код, который прослушивает поток и распечатывает на консоль
"Введена строка stroke_name" каждый раз, когда в потоке появляется новое
событие.*/
Stream<String> getStringStream() async* {
  print("Для выхода введите 'exit'");
  while (true) {
    stdout.write('Введите данные: ');
    String input = stdin.readLineSync().toString();
    if (input == 'exit') {
      break;
    } else {
      yield input;
    }
  }
}

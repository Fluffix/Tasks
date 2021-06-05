//Задача 1: название месяца по номеру//

//Задача 2: вывод чётный чисел с диапазона//

//Задача 3: //

import 'dart:convert';
import 'dart:io';

void main() {
  //Задача 1:
  print('Задача 1:');
  int numberMonth;
  numberMonth = 6;
  switch (numberMonth) {
    case 1:
      print('Январь\n');
      break;
    case 2:
      print('Февраль\n');
      break;
    case 3:
      print('Март\n');
      break;
    case 4:
      print('Апрель\n');
      break;
    case 5:
      print('Май\n');
      break;
    case 6:
      print('Июнь\n');
      break;
    case 7:
      print('Июль\n');
      break;
    case 8:
      print('Август\n');
      break;
    case 9:
      print('Сентябрь\n');
      break;
    case 10:
      print('Октябрь\n');
      break;
    case 11:
      print('Ноябрь\n');
      break;
    case 12:
      print('Декабрь\n');
      break;
    default:
      print('Неверный номер меяца\n');
  }

  //Задача 2:
  print('Задача 2:');
  for (var i = 0; i <= 100; i++) {
    if (i % 2 == 1 || i == 0) {
      continue;
    }
    print(i);
  }

  //Задача 3:
  print('\nЗадача 3:');
  var a;
  var b;
  int sym;
  do {
    print('Введите первое число:');
    a = stdin.readLineSync(encoding: Encoding.getByName('utf-8'));
    if (a == 'stop') {
      print('Выход...');
      break;
    }
    try {
      a = int.parse(a);
    } catch (e) {
      print('Вы ввели некорректные данные');
      continue;
    }
    print('Введите второе число:');
    b = stdin.readLineSync(encoding: Encoding.getByName('utf-8'));
    if (b == 'stop') {
      print('Выход...');
      break;
    }
    try {
      b = int.parse(b);
    } catch (e) {
      print('Вы ввели некорректные данные');
      continue;
    }
    sym = a + b;
    print('$sym - сумма введённых чисел');
  } while (sym == null);
}

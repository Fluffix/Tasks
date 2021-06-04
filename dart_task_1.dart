//Задача 1: глобаьная переменная 'a' вне класса//

//Задача 2: локальная переменная 'b' в функции//

/*Задача 3: нельзя присвоить значение переменной, так как мы хотим присвоить
локальную переменную глобальной*/

/*Задача 4: переменной 'dyn' присвоилось значение переменной 'text',
хотя до присвоения 'dyn' была проинициализированна типом int, но так как
при создании переменная 'dyn' была типом dymanic, то после инициализации
она без проблем присвоила данные с другим типом*/

/*Задача 5: Нельзя менять данные переменным, созданным при помощи ключевых слов
'final' и 'const', даже если значение, которое мы хотим присвоить, будет
совпадать по типу. Так же 'const' уже является 'final', однако в отличие от 'final'
значение не может быть изменено никаким образом.*/

//Задача 6: опратор ветвления, определяющий, чётное или же нет число//

//Задача 7: использование символа Unicode//

//Задача 8: манипуляции со списками//

//Задача 9: манипуляции с мапами//

/*Задача 10: длина остаётся неизменной, так как добавляемый элемент является
дублем элемента, уже находящемся в списке*/

//Задача 1:
int a;
void main() {
  //Задача 2:
  double b;

  //Задача 3:
  var text;
  text = 'text';
  // a = text; //Невозможно

  //Задача 4:
  dynamic dyn;
  dyn = 5;
  dyn = text;
  print('Задача 4:\n' + dyn + ' - тип данных изменился\n');

  //Задача 5:
  final fin = 8;
  const con = 'textCon';
  //fin = text; //Невозможно
  //con = text; //Невозможно

  //Задача 6:
  int a;
  a = 4;
  if (a % 2 == 0) {
    print("Задача 6:\nЧисло 'a' чётное\n");
  } else {
    print("Задача 6:\nЧисло 'a' нечётное\n");
  }

  //Задача 7:
  print('Задача 7:\nI \u2665 dart\n');

  //Задача 8:
  //Пункт 1:
  List<int> list;
  list = <int>[1, 2, 3, 4, 5, 6, 7, 8];
  //Пункт 2:
  print('Задача 8:\nПункт 2: ${list.length} - длина списка');
  //Пункт 3:
  list..sort((a, b) => b.compareTo(a));
  print('Пункт 3: $list - сортировка списка по убыванию');
  //Пункт 4:
  var newList = [];
  for (var i = 0; i < 3; i++) {
    newList.add(list[i]);
  }
  print(
      'Пункт 4: $newList - создание подсписка в 3 элемента из первоначального списка');
  //Пункт 5:
  for (var i = 0; i < list.length; i++) {
    if (list[i] == 5) {
      print('Пункт 5: $i - индекс элемента со значением 5');
    }
  }
  //Пункт 6:
  list.removeWhere((element) => 5 <= element && element <= 8);
  print('Пункт 6: $list - удалены элементы со значениями от 5 до 8');
  //Пункт 7:
  for (var i = 0; i < list.length; i++) {
    for (var y = 1; y <= 3; y++) {
      if (list[i] == y) {
        list[i] = y * 10;
      }
    }
  }
  print('Пункт 7: $list - замена значений в списке\n');

  //Задача 9:
  //Пункт 1:
  Map<String, int> numberBook;
  //Пункт 2:
  numberBook = <String, int>{
    'Иван': 2264865,
    'Татьяна': 89523366684,
    'Олег': 84952256575,
  };
  print(
      'Задача 8:\nПункт 2: $numberBook - вывод всего телефонного справочника');
  //Пункт 3:
  numberBook.addAll({'Екатерина': 2359942});
  //Пункт 4:
  var sortedEntriesNumberBook = numberBook.entries.toList()
    ..sort((a, b) => b.key.compareTo(a.key));
  numberBook
    ..clear()
    ..addEntries(sortedEntriesNumberBook);
  print('Пункт 4: $numberBook - обратная сортировка map по ключам\n');

  //Задача 10:
  //Пункт 1:
  Set<String> mySet;
  mySet = <String>{'Москва', 'Вашингтон', 'Париж'};
  //Пункт 2:
  mySet.add('Вашингтон');
  print('Задача 10:\nПункт 2: ${mySet.length} - длина списка не изменилась');
  //Пункт 3:
  String poem;
  poem =
      'She sells sea shells on the sea shore The shells that she sells are sea shells I am sure. So if she sells sea shells on the sea shore I am sure that the shells are sea shore shells';
  List<String> stringList;
  stringList = poem.split('.');
  poem = stringList[0] + stringList[1];
  stringList = poem.toLowerCase().split(' ');
  Set<String> stringSet;
  stringSet = {};
  stringList.forEach((element) {
    stringSet.add(element);
  });
  print('${stringSet.length} - количетсво уникальных слов');
}

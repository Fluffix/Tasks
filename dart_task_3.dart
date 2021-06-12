import 'dart:math';

void main() {
  /*Задание 1: Создайте текстовую переменную a = ‘hello world’; Напишите 
  функцию, без возвращаемого значения. Функция меняет порядок слов на обратный.
  Например было ‘hello world’, стало ‘world hello’*/
  String text = 'hello world';
  reverseText(text);

  /*Задание 2: Создайте и проинициализируйте массив чисел с произвольным
  размером. Напишите функцию, которая вычисляет среднее арифметическое число
  массива и возвращает double результат. Распечатайте результат в консоли.*/
  List<int> list = [5, 10, -6, 0];
  print(average(list));

  /*Задание 3: Модернизируйте предыдущие функции так, чтобы на вход они
  принимали необходимые данные для работы. Параметр должен быть опциональным.*/

  /*Задание 4: Напишите функцию решения квадратного уравнения, используя
  вложенные функции. Вычисление дискриминанта, нахождение x1 и x2 выполните во
  вложенных функциях. Главная функция должна возвращать готовый результат.
  Функция возвращает ответ в строке (String). Есть три вида результата:
   1.Уравнение не имеет решения так как его дискриминант меньше нуля;
   2.Квадратное уравнение имеет единственное решение;
   3.Квадратное уравнение имеет два разных корня.*/

  //Не имеет решения
  int a = 1;
  int b = -8;
  int c = 72;

  //Единственное решение
  // int a = 1;
  // int b = -6;
  // int c = 9;

  //Два разных корня
  // int a = 1;
  // int b = 7;
  // int c = 6;

  print('Решение уравнения: ' + findTheRoots(a: a, b: b, c: c));
}

void reverseText([String text]) {
  var splitText = text.split(' ');
  String reverseText = '';
  splitText.forEach((element) {
    reverseText = element + reverseText;
    if (splitText.indexOf(element) != splitText.length - 1) {
      reverseText = ' ' + reverseText;
    }
  });
  print(reverseText);
}

double average([List<int> list]) {
  double sum = 0;
  list.forEach((element) {
    sum += element;
  });
  return sum / list.length;
}

String findTheRoots({int a, int b, int c}) {
  var discriminant;
  var x1;
  var x2;

  findDiscriminant() {
    discriminant = (b * b) - (4 * a * c);
  }

  findRoots() {
    x1 = (-b + sqrt(discriminant)) / (2 * a);
    x2 = (-b - sqrt(discriminant)) / (2 * a);
  }

  findDiscriminant();
  findRoots();

  if (discriminant < 0) {
    return 'корней нет';
  } else if (discriminant == 0) {
    return 'x = $x1';
  } else {
    return 'x1 = $x1, x2 = $x2';
  }
}

/*Napisz program, który rysuje na ekranie
gwiazdki ułożone w prostokąt o szerokości dwa razy mniejszej od długości.
******
******
******
Liczbę rzędów podaje użytkownik.
*/

import 'dart:io';

void main() {
  StringBuffer row = StringBuffer();
  stdout.writeln('podaj liczbe rzedow');
  String? g = stdin.readLineSync();
  if (g != null) {
    int k = int.parse(g);

    for (int i = 1; i <= k * 2; i++) {
      row.write('*');
    }

    for (int i = 1; i <= k; i++) {
      print(row);
    }
  }
}

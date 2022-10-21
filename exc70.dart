/*Napisz program, który rysuje na ekranie
gwiazdki ułożone w trójkąt poniższego typu.
*
***
*****
*******
Liczbę rzędów podaje użytkownik.
*/

import 'dart:io';

void main() {
  StringBuffer row = StringBuffer();
  stdout.writeln('podaj liczbe rzedow');
  String? g = stdin.readLineSync();
  if (g != null) {
    int k = int.parse(g);

    for (int i = 1; i <= k; i++) {
      row.write('*');
      print(row);
    }
  }
}

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
  StringBuffer row = StringBuffer('*');
  StringBuffer gap = StringBuffer();
  stdout.writeln('podaj liczbe rzedow');
  String? g = stdin.readLineSync();
  if (g != null) {
    int k = int.parse(g);

    for (int i = 1; i <= k; i++) {
      gap.write(' ');
    }

    for (int i = 1; i <= k; i++) {
      print(gap.toString().substring(i) + row.toString());
      row.write('**');
    }
  }
}

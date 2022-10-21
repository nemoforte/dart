/*Napisz program, który rysuje na ekranie
gwiazdki ułożone w „kwadrat”.
***
***
***
Liczbę gwiazdek w jednym rzędzie podaje użytkownik.*/

import 'dart:io';

void main() {
  StringBuffer row = StringBuffer();
  stdout.writeln('podaj liczbe gwiazdek w jednym rzedzie');
  String? g = stdin.readLineSync();
  if (g != null) {
    int k = int.parse(g);

    for (int i = 1; i <= k; i++) {
      row.write('*');
    }

    for (int i = 1; i <= k; i++) {
      print(row);
    }
  }
}

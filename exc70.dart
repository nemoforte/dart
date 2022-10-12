/*Napisz program, który rysuje na ekranie
gwiazdki ułożone w trójkąt poniższego typu.
*
***
*****
*******
Liczbę rzędów podaje użytkownik.
*/

import 'dart:io';

main() {

  String row = '';
  stdout.writeln('podaj liczbe rzedow');
  String? g = stdin.readLineSync();
  if (g != null){
    int k = int.parse(g);
    print(k);

    for (int i = 1; i <= k; i++) {
      row = row + '*';
      print(row);
    }
  }
}

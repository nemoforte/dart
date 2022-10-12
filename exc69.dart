/*Napisz program, który rysuje na ekranie
gwiazdki ułożone w prostokąt o szerokości dwa razy mniejszej od długości.
******
******
******
Liczbę rzędów podaje użytkownik.
*/

import 'dart:io';

main() {

  String row = '';
  stdout.writeln('podaj liczbe gwiazdek w jednym rzedzie');
  String? g = stdin.readLineSync();
  if (g != null){
    int k = int.parse(g);
    print(k);

    for (int i = 1; i <= k; i++) {
      row = row + '*';
    }
    
    for (int i=1; i <= (k / 2).ceil(); i++) {
      print(row);
    }

  }
}

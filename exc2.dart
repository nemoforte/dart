/*Napisz program, który wypisze poniższy tekst.
Do obliczenia sześcianów użyj operacji mnożenia.

Oto szesciany wybranych liczb:

  k        k*k*k
  
 21         9261
 32        32768
-53      -148877

Koniec programu.*/

import 'dart:io';

void main() {
  List<String> list = <String>['k', 'k*k*k', ' ', ' '];
  String? nxt;
  int defgap1 = 0;
  int defgap2 = 0;
  StringBuffer gap1 = StringBuffer();
  StringBuffer gap2 = StringBuffer();

  stdout.writeln('input number');
  nxt = stdin.readLineSync();

  while (nxt != 'stop') {
    if (nxt != null) {
      list.add(nxt);
      int k = int.parse(nxt);
      k = k * k * k;
      nxt = k.toString();
      list.add(nxt);
      stdout.writeln("input another number or 'stop'");
      nxt = stdin.readLineSync();
    }
  }

  for (int i = 0; i < list.length; i = i + 2) {
    if (defgap1 < list[i].length) {
      defgap1 = list[i].length;
    }
  }

  for (int i = 1; i <= list.length; i = i + 2) {
    if (defgap2 < list[i].length) {
      defgap2 = list[i].length;
    }
  }

  print('Oto szesciany wybranych liczb: \n');

  for (int i = 0; i < list.length; i = i + 2) {
    for (int j = 0; j < defgap1 - list[i].length; j++) {
      gap1.write(' ');
    }
    for (int j = 0; j < (2 * defgap2) - list[i + 1].length; j++) {
      gap2.write(' ');
    }

    print(gap1.toString() + list[i] + gap2.toString() + list[i + 1]);
    gap1.clear();
    gap2.clear();
  }

  print('\nKoniec programu.');
}

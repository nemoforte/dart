/*Napisz program wypisujący poniższy tekst.

Oto pierwiastki kwadratowe wybranych liczb:

    k       sqrt(k)

   21     4.582576e+000
  132     1.148913e+001
11153     1.056078e+002

Koniec programu.*/

import 'dart:io';
import 'dart:math';

main() {
  List list = ['k', 'sqrt(k)'];
  String? nxt;
  int defgap1 = 0;
  int defgap2 = 0;
  String gap1 = "";
  String gap2 = "";
  int e = 0;
  double h = 0;

  stdout.writeln('input number');
  nxt = stdin.readLineSync();

  while (nxt != 'stop') {
    if (nxt != null) {
      list.add(nxt);
      int k = int.parse(nxt);
      h = sqrt(k);
      while (h > 10) {
        h = h/10;
        e = e+1;
      }
      while (h < 1) {
        h = h*10;
        e = e-1;
      }

      nxt = h.toStringAsFixed(6);
      list.add(nxt);
      list.add(e.toString().padLeft(3, '0'));
      e = 0;
      stdout.writeln("input another number or 'stop'");
      nxt = stdin.readLineSync();
    }
  }

  for (int i = 2; i < list.length; i=i+3) {
    if (defgap1 < list[i].length) {
      defgap1 = list[i].length;
    }
  }

  for (int i = 3; i <= list.length; i=i+3) {
    if (defgap2 < list[i].length) {
      defgap2 = list[i].length;
    }
  }

  for (int j = 0; j < defgap1-list[0].length; j++) {
    gap1 = gap1 + " ";
  }
  for (int j = 0; j < (defgap2+2)-list[1].length; j++) {
    gap2 = gap2 + " ";
  }


  print('Oto pierwiastki kwadratowe wybranych liczb: \n');

  print(gap1+list[0]+gap2+' '+list[1]);
  gap1 = "";
  gap2 = "";
  

  for (int i = 2; i < list.length; i=i+3) {

    for (int j = 0; j < defgap1-list[i].length; j++) {
      gap1 = gap1 + " ";
    }
    for (int j = 0; j < (defgap2+2)-list[i+1].length; j++) {
      gap2 = gap2 + " ";
    }

  print(gap1+list[i]+gap2+list[i+1]+'e+'+list[i+2]);
  gap1 = "";
  gap2 = "";
  }

  print(list);

  print('\nKoniec programu.');

}
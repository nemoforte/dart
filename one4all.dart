import 'dart:io';
import "dart:math";

main() {
  List list = ['k'];
  stdout.writeln('choose operation: 1 - k^3; 2 - k^3 oct; 3 - sqrt(k)');
  String? op = stdin.readLineSync();
  String? nxt;
  int defgap1 = 0;
  String gap1 = "";
  String gap2 = "";

  if (op == '1'){
    list.add('k*k*k');
    stdout.writeln('input number');
    nxt = stdin.readLineSync();

    while (nxt != 'stop') {
      if (nxt != null) {
        list.add(nxt);
        int k = int.parse(nxt);
        k = k*k*k;
        nxt = k.toString();
        list.add(nxt);
        stdout.writeln("input another number or 'stop'");
        nxt = stdin.readLineSync();
      }
    }
    
  } else if (op == '2') {
    list.add('k*k*k[8]');
    stdout.writeln('input number');
    nxt = stdin.readLineSync();

    while (nxt != 'stop') {
      if (nxt != null) {
        list.add(nxt);
        int k = int.parse(nxt);
        k = k*k*k;
        nxt = k.toRadixString(8);
        list.add(nxt);
        stdout.writeln("input another number or 'stop'");
        nxt = stdin.readLineSync();
      }
    }

  } else {
    list.add('sqrt(k)');
    stdout.writeln('input number');
    nxt = stdin.readLineSync();

    while (nxt != 'stop') {
      if (nxt != null) {
        list.add(nxt);
        int k = int.parse(nxt);
        nxt = sqrt(k).toStringAsFixed(6);
        list.add(nxt);
        stdout.writeln("input another number or 'stop'");
        nxt = stdin.readLineSync();
      }
    }
  }

  for (int i = 0; i < list.length; i=i+2) {
      if (defgap1 < list[i].length) {
        defgap1 = list[i].length;
      }
    }

  //print(list);
  
  stdout.writeln('alignment: 1 - to the left, 2 - to the right');
  String? w = stdin.readLineSync();

  if (w == '1') {

    for (int i = 0; i < list.length; i=i+2) {
      for (int j = 0; j <= (5*defgap1)-list[i].length; j++) {
        gap1 = gap1 + " ";
      }
    print(list[i]+gap1+list[i+1]);
    gap1 = "";
    }

  } else {
    
    int defgap2 = 0;
    for (int i = 1; i <= list.length; i=i+2) {
      if (defgap2 < list[i].length) {
        defgap2 = list[i].length;
      }
    }

    for (int i = 0; i < list.length; i=i+2) {

      for (int j = 0; j < defgap1-list[i].length; j++) {
        gap1 = gap1 + " ";
      }
      for (int j = 0; j < (2*defgap2)-list[i+1].length; j++) {
        gap2 = gap2 + " ";
      }

    print(gap1+list[i]+gap2+list[i+1]);
    gap1 = "";
    gap2 = "";
    }
  
  }
}


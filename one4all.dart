import 'dart:io';

main() {
  List list = ['k'];
  stdout.writeln('wybierz działanie: 1 - k^3; 2 - k^3 oct; 3 - sqrt(k)');
  String? op = stdin.readLineSync();
  String? nxt;

  if (op == '1'){
    list.add('k*k*k');
    stdout.writeln('wpisz liczbe');
    
    while (nxt != 'stop') {
        nxt = stdin.readLineSync();
        if (nxt != null && nxt != 'stop') {
          list.add(nxt);
          int k = int.parse(nxt);
          k = k*k*k;
          list.add(k);
        }
        stdout.writeln("wpisz kolejna liczbe lub 'stop'");
      }
      
    }
    print(list);
  }

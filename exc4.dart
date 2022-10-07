import "dart:math";

main() {

  int k1 = 21;
  int k2 = 32;
  int k3 = 53;

  String sqrk1 = sqrt(k1).toStringAsFixed(6);
  String sqrk2 = sqrt(k2).toStringAsFixed(6);
  String sqrk3 = sqrt(k3).toStringAsFixed(6);

  print('Oto szesciany wybranych liczb \n');
  print(' '+'k'+'          '+'k*k*k \n');
  print('$k1' + '          ' + '$sqrk1');
  print('$k2' + '          ' + '$sqrk2');
  print('$k3' + '          ' + '$sqrk3');
}
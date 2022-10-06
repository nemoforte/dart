main() {
  int k1 = 21;
  int k2 = 32;
  int k3 = -53;
  String gap1 = "     ";
  String gap2 = "    ";
  int k31 = k1*k1*k1;
  int k32 = k2*k2*k2;
  int k33 = k3*k3*k3;
  int len1 = k1.toString().length;
  int len2 = k1.toString().length;
  int len3 = k1.toString().length; 

  print('Oto szesciany wybranych liczb \n');
  print('k'+'$gap1'+'k*k*k \n');
  print('$k1' + '$gap1' + '$k31');
  print('$k2' + '$gap1' + '$k32');
  print('$k3' + '$gap2' + '$k33');
}
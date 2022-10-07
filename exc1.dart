main() {

  int k1 = 21;
  int k2 = 32;
  int k3 = -53;

  int k31 = k1*k1*k1;
  int k32 = k2*k2*k2;
  int k33 = k3*k3*k3;

  int len0 = 'k'.length;           //1
  int len1 = k1.toString().length; //2
  int len2 = k2.toString().length; //2
  int len3 = k3.toString().length; //3

  String gap0 = "";
  String gap1 = "";
  String gap2 = "";
  String gap3 = "";
  int defgaplen = 10;
  
  len0 = defgaplen - len0; //9
  len1 = defgaplen - len1; //8
  len2 = defgaplen - len2; //8
  len3 = defgaplen - len3; //7

  for (int i = 1; i <= len0; ++i) {
  gap0 = gap0 + " ";
  }

  for (int i = 1; i <= len1; ++i) {
  gap1 = gap1 + " ";
  }

  for (int i = 1; i <= len2; ++i) {
  gap2 = gap2 + " ";
  }

  for (int i = 1; i <= len3; ++i) {
  gap3 = gap3 + " ";
  }

  print('Oto szesciany wybranych liczb \n');
  print('k'+'$gap0'+'k*k*k \n');
  print('$k1' + '$gap1' + '$k31');
  print('$k2' + '$gap2' + '$k32');
  print('$k3' + '$gap3' + '$k33');
}
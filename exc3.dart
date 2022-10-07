main() {

  int k1 = 2;
  int k2 = 3;
  int k3 = 5;

  dynamic k31 = k1*k1*k1;
  dynamic k32 = k2*k2*k2;
  dynamic k33 = k3*k3*k3;

  k31 = k31.toRadixString(8);
  k32 = k32.toRadixString(8);
  k33 = k33.toRadixString(8);

  int len0 = 'k*k*k'.length;        //5
  int len1 = k31.toString().length; //2
  int len2 = k32.toString().length; //2
  int len3 = k33.toString().length; //3

  String gap0 = "";
  String gap1 = "";
  String gap2 = "";
  String gap3 = "";
  int defgaplen = 20;
  
  len0 = defgaplen - len0; //20 - 5 = 15
  len1 = defgaplen - len1; //20 - 2 = 18
  len2 = defgaplen - len2; //20 - 2 = 18
  len3 = defgaplen - len3; //20 - 3 = 17

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
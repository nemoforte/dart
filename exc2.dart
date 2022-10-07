main() {

  int k1 = 21;
  int k2 = 32;
  int k3 = -53;

  int k31 = k1*k1*k1;
  int k32 = k2*k2*k2;
  int k33 = k3*k3*k3;

  int plen0 = 'k'.length;           //1
  int plen1 = k1.toString().length; //2
  int plen2 = k2.toString().length; //2
  int plen3 = k3.toString().length; //3

  int len0 = 'k*k*k'.length;        //5
  int len1 = k31.toString().length; //4
  int len2 = k32.toString().length; //5
  int len3 = k33.toString().length; //7

  String gap0 = "";
  String gap1 = "";
  String gap2 = "";
  String gap3 = "";
  String pgap0 = "";
  String pgap1 = "";
  String pgap2 = "";
  String pgap3 = "";
  int defgaplen = 15;
  int defpgaplen = 2;

  plen0 = 1 + defpgaplen - plen0; //1 + 2 - 1 = 2
  plen1 = 1 + defpgaplen - plen1; //1 + 2 - 2 = 1
  plen2 = 1 + defpgaplen - plen2; //1 + 2 - 2 = 1
  plen3 = 1 + defpgaplen - plen3; //1 + 2 - 3 = 0

  len0 = defgaplen - len0; //10 - 5 = 5
  len1 = defgaplen - len1; //10 - 4 = 6
  len2 = defgaplen - len2; //10 - 5 = 5
  len3 = defgaplen - len3; //10 - 7 = 3

  for (int i = 1; i <= plen0; ++i) {
  pgap0 = pgap0 + " ";
  }

  for (int i = 1; i <= plen1; ++i) {
  pgap1 = pgap1 + " ";
  }

  for (int i = 1; i <= plen2; ++i) {
  pgap2 = pgap2 + " ";
  }

  for (int i = 1; i <= plen3; ++i) {
  pgap3 = pgap3 + " ";
  }
//------------------------------
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
  print('$pgap0'+'k'+'$gap0'+'k*k*k \n');
  print('$pgap1'+'$k1' + '$gap1' + '$k31');
  print('$pgap2'+'$k2' + '$gap2' + '$k32');
  print('$pgap3'+'$k3' + '$gap3' + '$k33');
}
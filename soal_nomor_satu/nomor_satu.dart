class Titik {
  int x = 0;
  int y = 0;
  
  int getXnya() {
    return x;
  }
  
  int getYnya() {
    return y;
  }
  
  void getXYnya(int isix, int isiy) {
    x = isix;
    y = isiy;
  }
  
  int penghitungJarak(int isix, int isiy) {
    int jarak = 0;
    x = isix;
    y = isiy;
    jarak = x - y;
    return jarak;
  }
}

void main() {
  final xy1 = Titik();
  
  xy1.x = 2;
  print('ini nilai x skrg : ${xy1.getXnya()}');
  
  xy1.y = 10;
  print('ini nilai y skrg : ${xy1.getYnya()}');
  
  xy1.getXYnya(3, 2);
  print('ini nilai x skrg : ${xy1.getXnya()} dan y nya : ${xy1.getYnya()}');
  
  print('ini jaraknya skrg : ${xy1.penghitungJarak(10, 6)}');
  
}

class Calculator {
  double operan1 = 0.0;
  double operan2 = 0.0;
  
  double isiOperan1(double x) {
    return operan1;
  }
  
  double isiOperan2(double x) {
    return operan2;
  }
  
  double tambah(operan1, operan2) {
    double tambah = 0.0;
    return tambah = operan1 + operan2;
  }
  
  double kurang(operan1, operan2) {
    double kurang = 0.0;
    return kurang = operan1 - operan2;
  }
  
  double kali(operan1, operan2) {
    double kali = 0.0;
    return kali = operan1 * operan2;
  }
  
  double bagi(operan1, operan2) {
    double bagi = 0.0;
    return bagi = operan1 / operan2;
  }
  
  double pangkat(operan1, operan2) {
    double pangkat = 1.0;
    for(int i = 1; i <= operan2; i++) {
      pangkat = pangkat * operan1;
    }
    return pangkat;
  }
}

void main() {
  final cobaKalkulator = Calculator();
  
  
  print('ini operan 1 : ${cobaKalkulator.isiOperan1(cobaKalkulator.operan1 = 4.0)}');
  print('ini operan 2 : ${cobaKalkulator.isiOperan2(cobaKalkulator.operan2 = 2.0)}');
  
  print('tambah : ${cobaKalkulator.tambah(4.0 , 2.0)}');
  print('kurang : ${cobaKalkulator.kurang(4.0 , 2.0)}');
  print('kali : ${cobaKalkulator.kali(4.0 , 2.0)}');
  print('bagi : ${cobaKalkulator.bagi(4.0 , 2.0)}');
  print('pangkat : ${cobaKalkulator.pangkat(9.0 , 5.0)}');
}

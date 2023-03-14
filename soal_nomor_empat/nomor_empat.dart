abstract class DuaDimensi {
  double hitungLuas();
  double hitungKeliling();
}

class PersegiPanjang extends DuaDimensi{
  double panjang = 12;
  double lebar = 4;
  
  @override
  double hitungLuas() {
    double luas = 0;
    luas = panjang * lebar;
    return luas;
  }
  
  @override
  double hitungKeliling() {
    double keliling = 0;
    keliling = 2 * (panjang + lebar);
    return keliling;
  }
}

class BujurSangkar extends DuaDimensi{
  double sisi = 5;
  
  @override
  double hitungLuas() {
    double luas = 0;
    luas = sisi * sisi;
    return luas;
  }
  
  @override
  double hitungKeliling() {
    double keliling = 0;
    keliling = 4 * sisi;
    return keliling;
  }
}

class Lingkaran extends DuaDimensi{
  double radius = 5;
  
  @override
  double hitungLuas() {
    double luas = 0;
    luas = 3.14 * radius * radius;
    return luas;
  }
  
  @override
  double hitungKeliling() {
    double keliling = 0;
    keliling = 2 * 3.14 * radius;
    return keliling;
  }
}


void main() {
  final pp = PersegiPanjang();
  final bs = BujurSangkar();
  final l = Lingkaran();
  
  print('1. luas persegi panjang: ${pp.hitungLuas()}');
  print('2. keliling persegi panjang: ${pp.hitungKeliling()}');
  
  print('3. luas bujur sangkar: ${bs.hitungLuas()}');
  print('4. keliling bujur sangkar: ${bs.hitungKeliling()}');
  
  print('5. luas lingkaran: ${l.hitungLuas()}');
  print('6. keliling lingkaran: ${l.hitungKeliling()}');
}

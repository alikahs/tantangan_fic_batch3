class Nilai {
  double quis = 0.0;
  double uts = 0.0;
  double uas = 0.0;
  
  void setQuis(double x) {
    this.quis = x;
  }
  
  double getNa() {
    double na = 0.0;
    na = (((20/100)*quis) + ((30/100)*uts) + ((50/100)*uas));
    return na;
  }
  
  void setUts(double x) {
    this.uts = x;
  }
  
  void setUas(double x) {
    this.uas = x;
  }
  
  String getIndex(double na) {
    String index = '';
    if(na >= 80 && na <= 100) {
      index = 'A';
    } else if (na >= 68 && na <= 80) {
      index = 'B';
    } else if (na >= 56 && na <= 68) {
      index = 'C';
    } else if (na >= 45 && na <= 56) {
      index = 'D';
    } else if (na >= 0 && na <= 45) {
      index = 'E';
    } else {
      index = '';
    }
    return index;
  }
  
  String getKeterangan(String index) {
    String keterangan = '';
    if(index == 'A') {
      keterangan = 'Sangat Baik';
    } else if (index == 'B') {
      keterangan = 'Baik';
    } else if (index == 'C') {
      keterangan = 'Cukup';
    } else if (index == 'D') {
      keterangan = 'Kurang';
    } else if (index == 'E') {
      keterangan = 'Sangat Kurang';
    } else {
      keterangan = '';
    }
    return keterangan;
  }
}

void main() {
  final nilai = Nilai();
  
  nilai.setQuis(80.0);
  nilai.setUts(90.0);
  nilai.setUas(64.0);
  
  print('ini nilai quis : ${nilai.quis}');
  print('ini nilai uts : ${nilai.uts}');
  print('ini nilai uas : ${nilai.uas}');
  print('ini index dari na : ${nilai.getIndex(nilai.getNa())}');
  print('ini keterangan dari index : ${nilai.getKeterangan(nilai.getIndex(nilai.getNa()))}');
}

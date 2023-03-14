import 'dart:math';

abstract class Kue {
    String _nama = '';
    double _harga = 0.0;
   
    double hitungHarga();
    String toString();
}

class KuePesanan extends Kue {
  double berat = 0.0;
  
  @override
  double hitungHarga() {
    double kueJadi = _harga * berat;
    return kueJadi;
  }
  
  @override
  String toString() {
    return 'nama kue $_nama dan harganya $_harga';
  }
}

class KueJadi extends Kue {
  double jumlah = 0.0;
  
  @override
  double hitungHarga() {
    double kueJadi = _harga * jumlah * 2;
    return kueJadi;
  }
  
  @override
  String toString() {
    return 'nama kue $_nama dan harganya $_harga';
  }
}

void main() {
  final kuePesanan = KuePesanan();
  final kueJadi = KueJadi();
  
  List<dynamic> array = [];
  
  array.add(
    {
      'kuePesanan': [
        {
          'nama' : 'kastangel',
          'harga' : 2000.0,
          'berat' : 1.0
        },
        {
          'nama' : 'miles crepes',
          'harga' : 5000.0,
          'berat' : 1.0
        },
        {
          'nama' : 'pancake',
          'harga' : 5000.0,
          'berat' : 1.0
        },
        {
          'nama' : 'piscok',
          'harga' : 1500.0,
          'berat' : 1.0
        },
        {
          'nama' : 'pisang nugget',
          'harga' : 20000.0,
          'berat' : 1.0
        },
        {
          'nama' : 'gamchi',
          'harga' : 35000.0,
          'berat' : 1.0
        },
        {
          'nama' : 'dodol',
          'harga' : 25000.0,
          'berat' : 1.0
        },
        {
          'nama' : 'kue bolu ketan item',
          'harga' : 25000.0,
          'berat' : 1.0
        },
        {
          'nama' : 'bolu pisang',
          'harga' : 20000.0,
          'berat' : 1.0
        },
        {
          'nama' : 'risol mayo',
          'harga' : 5000.0,
          'berat' : 1.0
        }
      ],
      'kueJadi': [
        {
          'nama' : 'lemper',
          'harga' : 4000.0,
          'jumlah' : 2.0
        },
        {
          'nama' : 'kue lumpur',
          'harga' : 5000.0,
          'jumlah' : 3.0
        },
        {
          'nama' : 'nagasari',
          'harga' : 2000.0,
          'jumlah' : 2.0
        },
        {
          'nama' : 'jadah',
          'harga' : 3000.0,
          'jumlah' : 3.0
        },
        {
          'nama' : 'kue thok',
          'harga' : 2000.0,
          'jumlah' : 1.0
        },
        {
          'nama' : 'onde - onde',
          'harga' : 1500.0,
          'jumlah' : 5.0
        },
        {
          'nama' : 'kue pukis',
          'harga' : 2000.0,
          'jumlah' : 2.0
        },
        {
          'nama' : 'kue cucur',
          'harga' : 1500.0,
          'jumlah' : 1.0
        },
        {
          'nama' : 'putu ayu',
          'harga' : 2000.0,
          'jumlah' : 5.0
        },
        {
          'nama' : 'dadar gulung',
          'harga' : 2000.0,
          'jumlah' : 2.0
        }
      ]
    }
  );
  
  double totalHargaSemuaKue = 0.0;
  double totalHargaKuePesanan = 0.0;
  double totalHargaKueJadi = 0.0;
  double totalBerat = 0.0;
  double totalJumlah = 0.0;
  List<double> hargaPesanan = [];
  List<double> hargaJadi = [];
  
  // kue pesanan
  kuePesanan._nama = 'Kue piscok';
  kuePesanan._harga = 2000.0;
  kuePesanan.berat = 3.0;
  print('kue pesanan, hitung harga : ${kuePesanan.hitungHarga()}');
  print('kue pesanan, toString : ${kuePesanan.toString()}');
  
  print('------------------------------------------------------');
  
  // kue jadi
  kueJadi._nama = 'Dodol';
  kueJadi._harga = 4000.0;
  kueJadi.jumlah = 5.0;
  print('kue jadi, hitung harga : ${kueJadi.hitungHarga()}');
  print('kue jadi, toString : ${kueJadi.toString()}');
  
  print('------------------------------------------------------');
  
  // array
  // 1. kue pesanan
  array.forEach((kuePes) {
    kuePes['kuePesanan'].forEach((ambilPes) {
      //print('harga kue pesanan : ${ambilPes['harga']}');
      totalHargaKuePesanan += ambilPes['harga'];
      //kuePesanan._harga = ambilPes['harga'];
      totalBerat += ambilPes['berat'];
      hargaPesanan.add(ambilPes['harga']);
      //kuePesanan.berat = ambilPes['berat'];
      //print('tes hitungHarga : ${kuePesanan.hitungHarga()}');
    });
  });
  
  // 2. kue jadi
  array.forEach((kueJad) {
    kueJad['kueJadi'].forEach((ambilJad) {
      //print('harga kue jadi : ${ambilJad['harga']}');
      totalHargaKueJadi += ambilJad['harga'];
      totalJumlah += ambilJad['jumlah'];
      hargaJadi.add(ambilJad['harga']);
    });
  });
  
  totalHargaSemuaKue = totalHargaKuePesanan + totalHargaKueJadi;
  print('ini total semua harga kue : $totalHargaSemuaKue');
  
  print('------------------------------------------------------');
  
  // hitung total harga dan total berat kue pesanan
  print('ini total harga kue pesanan : $totalHargaKuePesanan');
  print('ini total berat kue pesanan : $totalBerat');
  
  print('------------------------------------------------------');
  
  // hitung total harga dan total jumlah kue jadi
  print('ini total harga kue jadi : $totalHargaKueJadi');
  print('ini total jumlah kue jadi : $totalJumlah');
  
  print('------------------------------------------------------');
  
  // informasi kue dengan harga kue terbesar
  print('harga terbesar kue pesanan : ${hargaPesanan.reduce(max)}');
  print('harga terbesar kue jadi : ${hargaJadi.reduce(max)}');
}
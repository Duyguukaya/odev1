import 'dart:io';

class Ogrenci {
  String ad;
  String soyad;
  List<double> notlar = [];


  Ogrenci(this.ad, this.soyad);


  void notEkle(double not) {
    notlar.add(not);
    print("Not başarıyla eklendi!");
  }


  double ortalamaHesapla() {
    if (notlar.isEmpty) {
      print("Henüz eklenmiş bir not bulunmamaktadır.");
      return 0.0;
    } else {
      double toplam = 0.0;
      for (var not in notlar) {
        toplam += not;
      }
      return toplam / notlar.length;
    }
  }
}

void main() {
  print("Öğrencinin adını girin:");
  String? ad = stdin.readLineSync();

  print("Öğrencinin soyadını girin:");
  String? soyad = stdin.readLineSync();

  if (ad != null && soyad != null) {
    Ogrenci ogrenci = Ogrenci(ad, soyad);

    while (true) {
      print("Yapmak istediğiniz işlemi seçin:");
      print("1. Not ekle");
      print("2. Ortalama hesapla ve çık");
      String? secim = stdin.readLineSync();

      if (secim == "1") {
        print("Eklenecek notu girin:");
        String? notGirisi = stdin.readLineSync();
        double? notDegeri = double.tryParse(notGirisi ?? '');

        if (notDegeri != null) {
          ogrenci.notEkle(notDegeri);
        } else {
          print("Geçersiz bir not girdiniz!");
        }
      } else if (secim == "2") {
        double ortalama = ogrenci.ortalamaHesapla();
        print("${ogrenci.ad} ${ogrenci.soyad} adlı öğrencinin not ortalaması: $ortalama");
        break;
      } else {
        print("Geçersiz bir seçim yaptınız.");
      }
    }
  } else {
    print("Geçersiz öğrenci bilgisi girdiniz.");
  }
}


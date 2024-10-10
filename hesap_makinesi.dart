import 'dart:io';

void main() {

  print('Birinci sayıyı girin:');
  double? sayi1 = double.tryParse(stdin.readLineSync()!);

  print('İkinci sayıyı girin:');
  double? sayi2 = double.tryParse(stdin.readLineSync()!);

  print('Bir işlem seçin (+, -, *, /):');
  String? islem = stdin.readLineSync();


  if (sayi1 != null && sayi2 != null && islem != null) {
    switch (islem) {
      case '+':
        print('Sonuç: ${sayi1 + sayi2}');
        break;
      case '-':
        print('Sonuç: ${sayi1 - sayi2}');
        break;
      case '*':
        print('Sonuç: ${sayi1 * sayi2}');
        break;
      case '/':
        if (sayi2 != 0) {
          print('Sonuç: ${sayi1 / sayi2}');
        } else {
          print('Hata: Sıfıra bölme yapılamaz.');
        }
        break;
      default:
        print('Hata: Geçersiz işlem seçtiniz.');
    }
  } else {
    print('Hata: Geçersiz sayı girdiniz.');
  }
}

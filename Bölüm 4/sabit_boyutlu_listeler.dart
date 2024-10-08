/**
 * List ikiye ayrılır
 *  1-Sabit uzunluklu
 *  2-Büyüyen listeler
 * 
 * Diğer dillerde dizi olarak bilinen yapılar dart dilinde sabit uzunluklu liste olarak kullanılır.
 * List<int> numaralar = List(10); //10 eleman içeren sabit uzunluklu liste yani dizi.
 * Index numaraları 0'dan baslar yani listenin ilk elemanına erişmek için 0. indexine bakılır. numaralar[0] diyerek..
 * 
 */
void main(List<String> args) {
  List<int> sayilar = List.filled(5, 2, growable: false);
  sayilar[0] = 4;
  sayilar[1] = 2;
  sayilar[2] = 9;
  print(sayilar);
  print(sayilar.length);
  print(sayilar[3]);

  List<String> isimler = List.filled(2, "");
  isimler[0] = 5.toString();
  isimler[1] = "Emre";
  print(isimler);

  List karisik = List.filled(5, 0);
  karisik[0] = "Emre";
  karisik[1] = 5;
  karisik[2] = false;
  print(karisik);

  //Liste elemanlarını gezmece
  for (var i = 0; i < sayilar.length; i++) {
    sayilar[i] += 5;
    print(sayilar[i]);
  }

  for (var i in sayilar) {
    print(i);
  }
}

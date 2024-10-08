/**
 * Eğer bir nullable tipin null olmadığından eminseniz, null assertion yani ! kullanabilirsiniz, böylece dart o değişkene non-nullable olarak davranır ve sorun kalmaz. 
 * Bu işareti bullnınca şunu demiş olursunuz: değer null olmayacak bu yüzden bu değeri non-nullable bir değişkene atabilirsiniz.
 * 
 * Eğer bu düşüncenizde hatalıysanız/haksızsanız dart sun-timeda bir hata fırlatır. Böylece programımız null hatalarına açılmış olur bu yüzden yüzde yüz kodunuzun null olmayacağından emin değilseniz bunu kullanmayın.
 * 
 * Özetle ! koyduğunuzda dart'a şunu dersiniz: Biliyorum bu değişken null olabilir ama söz veriyorum ki null değer yok, o yüzden bunu null değer kabul etmeyen bir değişkene atayabilirsin.
 * 
 * Dart aynı scopeda ise o değişken nullable bile olsa null olup olmadığını anlayabilir. Farklı scopeda yani kapsamdaysa emin olamaz.
 */

int? nullOlabilirAmaDegil = 1;
void main(List<String> args) {
  List<int?> nullDegerTutanListe = [2, 3, null];

  int a = nullOlabilirAmaDegil!;
  int b = nullDegerTutanListe.first!;
  int c = nullDondurebilirAmaDondurmeyecek()!.abs();
}

int? nullDondurebilirAmaDondurmeyecek() {
  return 5;
}

void main() {
  // String ogrenci1 = "Ali";
  // String ogrenci2 = "Veli";
  // String ogrenci3 = "Zeki";

  // print(ogrenci1 + " " + ogrenci2 + " " + ogrenci3);

  // var ogrenciler = new List(3);
  // ogrenciler[0] = "Zengin";
  // ogrenciler[1] = "Veli";
  // ogrenciler[2] = "Ali";
  // print(ogrenciler);

  var sehirler = ["ankAra", "İstanbul", "İzmir", "Gaziantep"];
  sehirler.add("Kars");
  print(sehirler);
  print(sehirler.length);
  print(sehirler.first);
  print(sehirler.last);

  sehirler.insert(1, "element");
  print(sehirler);
  // print(sehirler.firstWhere((s) => s.contains("A")));
  print(sehirler.firstWhere((s) => s.contains("a")));
}

void main() {
  var sozluk = {"book": "kitap", "table": "masa", "pencil": "kalem"};
  sozluk["teacher"] = "ogretmen";
  sozluk["book"] = "kitap1";
  // print(sozluk);
  // print(sozluk["teacher"]);
  // print(sozluk.keys);
  // for (var eleman in sozluk.values) {
  //   print(eleman);
  // }
  // print(sozluk.length);
  // print(sozluk.remove("book"));
  // sozluk.clear();
  // print(sozluk.containsKey("book"));
  print(sozluk);
  sozluk.forEach((k, v) {
    print(k);
  });
}

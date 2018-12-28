main(List<String> args) {
  var sayi = 30;

  if (sayi > 20) {
    print("Sayı 20 den büyük ");
  } else if (sayi == 20) {
    print("Sayı 20 eşittir.");
  } else {
    print("Sayı 20 den küçüktür.");
  }

  var not = "B";
  switch (not) {
    case "A":
      {
        print("En yüksek not");
      }
      break;
    case "B":
      {
        print("Orta bir not aldınız.");
        print("Nasıl");
      }
      break;
    default:
      print("Ne yapacağmı bilmiyorum");
  }
}

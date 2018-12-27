// void main() {
//   //
//   //
//   selamVer("Veli");
//   int karesi = kareAl(10);
//   print(karesi);
//   //
//   //
// }

// void selamVer(String isim) {
//   print("Merhaba " + isim);
// }

// int kareAl(int sayi) {
//   return sayi * sayi;
// }

//DRY - Dont Repeat Yourself
main() {
  // test("Ali", "Veli", "Salih");
  // test("Ali");
  test2("Zengin",c:"Derin",b:"Veli");
}

void test(a, [b, c]) {
  print(a);
  print(b);
  print(c);
}

void test2(a, {b, c}) {
  print(a);
  print(b);
  print(c);
}

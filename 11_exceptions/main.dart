main() {
  int a = 10;
  // int b = 20;
  int b = 10;
  int result;

  // result = a ~/ b; // ~ işareti ile tam kısmı alır. Bölümün sonu int verir. Normalde double
  // print(result);

  try {
    result = a ~/ b;
    print(result);
    throw new FormatException();
  } on IntegerDivisionByZeroException catch (e) {
    print(e);
  } on FormatException catch (e) {
    print(e);
  } catch (e) {
    print(e);
  } finally {
    print("Hata olsada olmasada çalışacak kısım");
  }

  try {
    setAge(12);
  } on FormatException catch (e) {
    print(e);
  }
  try {
    calculate(12);
  } on RuleException catch (e) {
    print(e.errorMessage());
  }
}

void setAge(int age) {
  if (age < 13) {
    throw new FormatException("Yaşınız 12'ten büyük olmalıdır.");
  }
}

class RuleException implements Exception {
  String errorMessage() {
    return "kural hatası oluştu";
  }
}

void calculate(double amount) {
  if (amount < 1000) {
    throw new RuleException();
  }
}

void main() {
  CustomerManager customerManager = new CustomerManager();
  customerManager.GetBestCustomer();
  // customerManager.Save();
  CustomerManager.operasyon();
  // customerManager.operasyon(); // bu çalıştırılmaz.

  PersonelManager personelManager = new PersonelManager();
  personelManager.Pay();
  personelManager.Save();
}

class PersonManager {
  void Save() {
    print("Kaydedildi.");
  }
}

class CustomerManager extends PersonManager {
  void GetBestCustomer() {
    print("En iyi müşteri getirildi.");
  }

  static operasyon() {
    print("Statik operasyon çalıştırıldı.");
  }
}

class PersonelManager extends PersonManager {
  @override //override edilmesi
  void Save() {
    print("loglandı.");
    super
        .Save(); // miras aldığı sınıfın save metodu çalıştırılır. Override edilmeden önceki hali çalıştırılır.
  }

  void Pay() {
    print("Maaş ödendi.");
  }
}

class Person {
  int id;
  String name;
}

class Customer extends Person {
  String creditCardNo;
  Customer() {
    // this.id
  }
}

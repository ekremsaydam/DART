void main() {
  Customer customer = new Customer.namedCons("e", "Alp", 2);
  customer.id = 1;
  customer.name = "d";
  customer.lastName = "Ali";
  print(customer.customerName);
  customer.customerName = "su";

  CustomerManager customerManager = new CustomerManager();
  customerManager.Save(customer);
  customerManager.Update(customer);
  customerManager.Delete(customer);
}

class CustomerManager {
  void Save(Customer customer) {
    print("Müşteri Kaydedildi. " + customer.name);
  }

  void Delete(Customer customer) {
    print("Mülteri SİLİNDİ. " + customer.name);
  }

  void Update(Customer customer) {
    print("Müşteri GÜNCELLENDİ. " + customer.name);
  }
}

class Customer {
  String name;
  String lastName;
  int id;

  Customer.namedCons(String name, String lastName, int id) {
    // print("Sınıf oluştu");
    this.name = name;
    this.lastName = name;
    this.id = id;
  }

  Customer() {}
  void method() {}

  String get customerName {
    return this.name;
  }

  void set customerName(String name) {
    if (name.length < 2) {
      print("Müşteri ismi minimum iki karakterden oluşmalıdır.");
    } else {
      this.name = name;
    }
  }
}

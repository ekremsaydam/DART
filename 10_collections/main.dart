void main() {
  List list = new List();
  list.add("Ankara");
  list.add(1); // farklı veri tipindeki verileri bir arada tutulabilmekte.
  // print(list);

  List<String> sehirler =
      new List<String>(); // sadece string ifadeleri barındırır.
  sehirler.add("Ankara");
  sehirler.add("İzmir");
  // sehirler.add(1); //error

  var elemanSayisi = sehirler.length;
  print(elemanSayisi);
  sehirler.remove("İzmir");
  sehirler.removeAt(0);

  for (var sehir in sehirler) {
    print(sehir);
  }

  List<Customer> customers = new List<Customer>();
  customers.add(new Customer(101, "Zeki", "Koşar", "Ankara"));
  
  print(customers);
  for (var customer in customers) {
    print(customer.id.toString() + " " + customer.firstName);
  }
}

class Customer {
  int id;
  String firstName;
  String lastName;
  String city;

  Customer(int id, String firstName, String lastName, String City) {
    this.id = id;
    this.firstName = firstName;
    this.lastName = lastName;
    this.city = city;
  }
}

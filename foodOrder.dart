import 'dart:async';

// Kelas untuk merepresentasikan sebuah item di menu
class MenuItem {
  String name;
  double price;

  MenuItem(this.name, this.price);
}

// Kelas untuk merepresentasikan sebuah pesanan
class Order {
  List<MenuItem> items;
  bool completed;

  Order() : items = [], completed = false;

  // Metode untuk menambahkan item ke dalam pesanan
  void addItem(MenuItem item) {
    items.add(item);
  }

  // Metode async untuk menyelesaikan pesanan
  Future<void> completeOrder() async {
    print('Memproses pesanan...');
    await Future.delayed(Duration(seconds: 3)); // Delay selama 3 detik untuk simulasi
    completed = true;
    print('Pesanan selesai:');
    for (var item in items) {
      print('- ${item.name}');
    }
  }
}

// Kelas untuk mengelola daftar pesanan di restoran
class OrderManager {
  List<Order> orders;

  OrderManager() : orders = [];

  // Metode untuk menambahkan pesanan baru
  void addOrder(Order order) {
    orders.add(order);
  }

  // Metode async untuk menyelesaikan semua pesanan
  Future<void> completeAllOrders() async {
    print('Memproses semua pesanan...');
    await Future.forEach(orders, (order) async {
      await order.completeOrder();
    });
    print('----------------------------------');
    print('Semua pesanan selesai.');
    print('----------------------------------');
  }
}

void main() {
  // Membuat daftar menu makanan
  List<MenuItem> menu = [
    MenuItem('Nasi Goreng', 15.0),
    MenuItem('Ayam Bakar', 20.0),
    MenuItem('Es Teh', 5.0),
  ];

  // Membuat beberapa pesanan
  Order order1 = Order();
  order1.addItem(menu[0]); // Nasi Goreng

  Order order2 = Order();
  order2.addItem(menu[1]); // Ayam Bakar
  order2.addItem(menu[2]); // Es Teh

  // Membuat objek OrderManager dan menambahkan pesanan
  OrderManager orderManager = OrderManager();
  orderManager.addOrder(order1);
  orderManager.addOrder(order2);

  print('----------------------------------');
  print('Daftar pesanan:');
  for (var order in orderManager.orders) {
    for (var item in order.items) {
      print('- ${item.name}');
    }
  }
  print('----------------------------------');

  // Menyelesaikan semua pesanan
  orderManager.completeAllOrders();
}

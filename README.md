# TP1PROVIS
### Salma Ghaida 
### 2207186
### Ilmu Komputer C1

## Konsep OOP:

### Kelas `MenuItem`:
- `MenuItem` merepresentasikan sebuah item di menu.
- Memiliki dua atribut: `name` (nama item) dan `price` (harga item).
- Konstruktor menerima dua parameter untuk menginisialisasi atribut `name` dan `price`.

### Kelas `Order`:
- `Order` merepresentasikan sebuah pesanan.
- Memiliki dua atribut: `items` (daftar item dalam pesanan) dan `completed` (status pesanan).
- Konstruktor membuat list kosong untuk `items` dan mengatur `completed` menjadi `false`.
- Metode `addItem()` digunakan untuk menambahkan item ke dalam pesanan.
- Metode `completeOrder()` adalah metode asynchronous yang menyelesaikan pesanan dengan simulasi penundaan selama 3 detik.
- Metode ini mencetak semua item dalam pesanan dan menandai pesanan sebagai selesai.

### Kelas `OrderManager`:
- `OrderManager` mengelola daftar pesanan di restoran.
- Memiliki satu atribut: `orders` (daftar pesanan).
- Konstruktor membuat list kosong untuk `orders`.
- Metode `addOrder()` digunakan untuk menambahkan pesanan baru ke dalam daftar.
- Metode `completeAllOrders()` adalah metode asynchronous yang menyelesaikan semua pesanan dalam daftar.
- Metode ini mencetak semua item dalam setiap pesanan dan menandai semua pesanan sebagai selesai.

### Output:
Output program terdiri dari dua bagian utama:
1. **Daftar Pesanan**: Mencetak nama setiap item dalam setiap pesanan yang dibuat.
2. **Proses Pesanan**: Setiap pesanan diproses secara asynchronous. Setelah setiap pesanan selesai diproses, nama item dalam pesanan tersebut dicetak. Setelah semua pesanan selesai diproses, pesan "Semua pesanan selesai." ditampilkan.


## Konsep Async (Asynchronous):

1. **Async/Await:**
   - Dalam program ini digunakan kata kunci `async` dan `await` untuk menandai metode yang akan dijalankan secara asynchronous, yaitu dalam metode `completeOrder()` dalam kelas `Order`.
   - Dengan menggunakan `await`, hasil dari operasi asynchronous sebelum melanjutkan eksekusi kode berikutnya dapat kita tunggu
   - `await` pada `Future.delayed()` digunakan untuk menunda eksekusi sampai setelah jeda waktu tertentu.

2. **Future:**
   - `Future` digunakan untuk mewakili nilai atau tindakan yang akan tersedia di masa depan, seperti hasil operasi asynchronous.
   - `Future<void>` digunakan untuk menunjukkan bahwa metode `completeOrder()` akan mengembalikan `void`, tetapi secara asynchronous.

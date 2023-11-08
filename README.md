# inventory_apps

A new Flutter project.

## Getting Started

This project is a starting point for a Flutter application.

A few resources to get you started if this is your first Flutter project:

- [Lab: Write your first Flutter app](https://docs.flutter.dev/get-started/codelab)
- [Cookbook: Useful Flutter samples](https://docs.flutter.dev/cookbook)

For help getting started with Flutter development, view the
[online documentation](https://docs.flutter.dev/), which offers tutorials,
samples, guidance on mobile development, and a full API reference.

# Apa perbedaan utama antara stateless dan stateful widget dalam konteks pengembangan aplikasi Flutter?

Stateless Widget:

Tidak memiliki data yang dapat berubah selama proses render.
Digunakan untuk widget yang tidak perlu menyimpan atau mengubah data selama rendering tampilan.
Dibuat menggunakan kelas yang mewarisi StatelessWidget.
build method dipanggil saat widget perlu dirender ulang.
Contoh penggunaan: tampilan yang tidak berubah sepanjang hidup aplikasi, seperti label teks atau ikon.

Stateful Widget:

Memiliki data yang dapat berubah selama proses render.
Digunakan untuk widget yang perlu menyimpan dan mengubah data selama rendering tampilan.
Dibuat menggunakan kelas yang mewarisi StatefulWidget.
Selain build, memiliki metode lain seperti initState untuk inisialisasi data.
setState dipanggil untuk memicu pembaruan tampilan saat data berubah.
Contoh penggunaan: tampilan yang berubah seiring waktu, seperti formulir input atau tampilan daftar.


# Sebutkan seluruh widget yang kamu gunakan untuk menyelesaikan tugas ini dan jelaskan fungsinya masing-masing.

Berikut adalah daftar widget yang digunakan berserta penjelasan fungsinya:

1. ShopItem: Kelas ini digunakan untuk mendefinisikan model item toko, termasuk nama dan ikonnya. Ini digunakan untuk membuat daftar item toko.

2. MyHomePage: Kelas ini adalah widget utama yang mewarisi StatelessWidget. Widget ini digunakan untuk membuat tampilan beranda (home) aplikasi dengan daftar item toko.

    Scaffold: Ini adalah kerangka dasar untuk tampilan aplikasi dan menyediakan struktur seperti app bar dan body. Di dalamnya, kita menentukan appBar dan body aplikasi.

    AppBar: Digunakan untuk menampilkan app bar di bagian atas tampilan. App bar ini berisi judul aplikasi ("Shopping List").

    SingleChildScrollView: Ini adalah widget yang memungkinkan kontennya dapat discroll jika terlalu besar untuk layar. Kontennya terletak dalam Column yang digunakan untuk menampilkan elemen-elemen secara vertikal.

    Padding: Widget ini digunakan untuk memberikan jarak (padding) pada konten di dalamnya. Ini membungkus Column dan memberikan jarak dari tepi tampilan.

    Column: Widget ini mengatur elemen-elemen dalam susunan vertikal.

    GridView.count: Digunakan untuk menampilkan daftar item toko dalam tata letak grid. Anda dapat menentukan berapa banyak kolom dalam grid ini (dalam hal ini, 3 kolom).

3. ShopCard: Kelas ini digunakan untuk membuat kartu item toko, yang diberikan item dari daftar. Ini berisi ikon dan teks item toko. ShopCard adalah widget yang digunakan untuk menampilkan setiap item toko dalam grid.

    ShopCard: Kelas ini mewarisi StatelessWidget dan digunakan untuk membuat kartu item toko yang menampilkan ikon dan teks item toko.

    Material: Ini adalah widget yang mengatur warna latar belakang kartu berdasarkan item toko yang diberikan.

    InkWell: Digunakan sebagai area tappable untuk item toko. Ketika di-tap, widget ini menampilkan pesan snack-bar.

    Icon: Digunakan untuk menampilkan ikon item toko.

    Text: Digunakan untuk menampilkan teks item toko.

4. MyApp: Kelas ini adalah widget yang digunakan sebagai root aplikasi. Ini menentukan tema (theme) aplikasi dan tampilan utama (MyHomePage).

# Jelaskan bagaimana cara kamu mengimplementasikan checklist di atas secara step-by-step (bukan hanya sekadar mengikuti tutorial)

Generate proyek Flutter dengan nama inventory_apps, masuk ke dalam direktori proyek dan membuka terminal, yaitu dengan melakukan perintah flutter create <APP_NAME>. Untuk menjalankan proyek tersebut maka jalankan flutter run melalui terminal atau command prompt. 
Setelah itu melakukan perapihan pada struktur proyek dengan membuat file baru bernama menu.dart. Selain itu juga membuat widget sederhana pada flutter yaitu dnegan membuat nama dari toko sebagai header dab membuat card yang menandakan barang yang dijual. Saat button ditekan, maka akan keluar pemberitahuan di bagian bawah layar. Kemudian mengubahh sifat widget halaman dari stateful menjadi stateless. 
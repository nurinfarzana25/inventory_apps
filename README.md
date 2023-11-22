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

1. Apakah bisa kita melakukan pengambilan data JSON tanpa membuat model terlebih dahulu? Jika iya, apakah hal tersebut lebih baik daripada membuat model sebelum melakukan pengambilan data JSON?

Ya, kita dapat mengakses data JSON tanpa perlu membuat model terlebih dahulu. Proses pengambilan data JSON melibatkan membaca atau mengonsumsi data yang dikirim dalam format JSON. Ini dapat dilakukan melalui bahasa pemrograman yang mendukung pengolahan JSON atau menggunakan library khusus yang tersedia dalam banyak bahasa pemrograman. Pembuatan model, di sisi lain, umumnya terkait dengan kebutuhan analisis data yang lebih mendalam, seperti dalam pembelajaran mesin, di mana tujuannya adalah membuat model berdasarkan data yang ada.

Keputusan untuk melakukan pengambilan data JSON tanpa membuat model terlebih dahulu atau sebaliknya bergantung pada kebutuhan dan tujuan Anda:

Jika tujuan utamanya adalah mengakses atau menampilkan data JSON dari API atau sumber data lainnya, lebih baik tidak membuat model.

Namun, jika tujuan Anda melibatkan analisis data lebih lanjut, prediksi pola, atau pembuatan rekomendasi berdasarkan data tersebut, maka membangun model menjadi suatu kebutuhan.

2. Jelaskan fungsi dari CookieRequest dan jelaskan mengapa instance CookieRequest perlu untuk dibagikan ke semua komponen di aplikasi Flutter.

CookieRequest berfungsi untuk mengelola permintaan request yang berhubungan dengan cookie dalam aplikasi. Dimana class ini akan menngatur hal-hal yang berkaitan dengan data yang disimpan di sisi cllient untuk melacak informasi terkait sesi pengguna.

Instance CookieRequest perlu dibagikan ke semua komponen untuk memastikan bahwa manajemen cookie dilakukan dengan cara yang seragam di semua komponen dalam aplikasi tersebut sehingga sesi pengguna akan dipelihata dengan konsisten.

3. Jelaskan mekanisme pengambilan data dari JSON hingga dapat ditampilkan pada Flutter.

Pertama, buat terlebih dahulu model sesuai dengan respons dari data JSON tersebut. Lalu, kita buat suatu http request ke web untuk melakukan fetch data. Untuk tugas ini, data diambil dari aplikasi webbb django tugas sebelumnya. Terakhir, data ditampilkan pada flutter melalui widget.

4. Jelaskan mekanisme autentikasi dari input data akun pada Flutter ke Django hingga selesainya proses autentikasi oleh Django dan tampilnya menu pada Flutter.

Pada halaman login (LoginPage), user akan diminta input berupa username serta passwordnya untuk diisi. Username dan password tersebut akan dikirim ke method login yang ada di app authentication yang ada pada web Django. Jika username dan password benar, maka method tersebut akan me-return status True dan user dapat masuk ke dalam aplikasi.

5. Sebutkan seluruh widget yang kamu pakai pada tugas ini dan jelaskan fungsinya masing-masing.

TextField : menerima input teks dari pengguna. Pada tugas ini digunakan untuk menerima username dan password saat login dan registrasi.
SizedBox : membuat ruang tertentu. Pada tugas ini dugnakan untuk memberikan jarak atau pemisah antara TextField username dan passowrd.
ElevatedButton : membuat tombol yang memiliki efek elevasi ketika ditekan. Pada tugas ini digunakan sebagai tombol submit pada saat login dan registrasi.
TextButton : membuat tombol berupa teks tanpa latar belakang. Pada tugas ini digunakan pada tombol registrasi
Listview.builder : membuat daftar item yang dapat discroll. Pada tugas ini digunakan untuk menampilkan daftar item yang ada.
Text : membuat teks. Pada tugas ini digunakann untuk menampilkan teks detail saat item pada daftar item ditekan.

6. Jelaskan bagaimana cara kamu mengimplementasikan checklist di atas secara step-by-step! (bukan hanya sekadar mengikuti tutorial).

Membuat app baru bernama authentication pada proyek django sbeelumnya. Lalu melakukan beberapa settings pada setting.py nya.
Membuat views untuk authentication yang nantinya akan digunakan pada saat login.
Menginstal package Flutter untuk melakukan kontak dengan webservice django.
Membuat file untuk login, yaitu login.dart di folder screens, lalu mengimplementasikan kode nya.
membuat model kustom dengan bantuan web Quicktype, lalu menambahkan dependency http nya.
Membuat file list_product.dart untuk tampilan "Lihat Item". Disini dilakukan fetch data dari Django tugas sebelumnya. Pada file ini, akan ditambilkan seluruh item yang ada di database django tugas sebelumnya, dan saya membuat ontap pada setiap item yang bis aberalih ke page deail product.
Membuat file detail product untuk menapilkan dtail suatu product.
Mengisi readme.

#####################################################################################################

1. Jelaskan perbedaan antara Navigator.push() dan Navigator.pushReplacement(), disertai dengan contoh mengenai penggunaan kedua metode tersebut yang tepat!

Navigator.push() digunakan untuk memasukkan halaman baru ke atas stack navigasi. Halaman yang dipanggil menggunakan Navigator.push() akan menjadi halaman teratas dalam stack navigasi. Ketika kembali dari halaman tersebut, maka akan kembali ke halaman sebelumnya dalam stack

Navigator.pushReplacement() digunakan untuk memasukkan halaman baru ke atas stack navigasi dan menghapus halaman sebelumnya dari stack. Halaman yang dipanggil menggunakan Navigator.pushReplacement() akan menjadi halaman teratas dalam stack navigasi dan halaman sebelumnya akan dihapus dari stack. Oleh karena itu, tidak ada cara kembali ke halaman sebelumnya dari halaman yang dipanggil menggunakan Navigator.pushReplacement()

Contoh Penggunaan: Menggunakan Navigator.push() Navigator.push( context, MaterialPageRoute(builder: (context) => SecondRoute()), );

Menggunakan Navigator.pushReplacement() Navigator.pushReplacement( context, MaterialPageRoute(builder: (context) => HomeRoute()), );

2. Jelaskan masing-masing layout widget pada Flutter dan konteks penggunaannya masing-masing!

Container:
Container adalah widget serbaguna yang dapat digunakan untuk mengubah properti seperti padding, margin, ukuran, dan warna latar. Ini memungkinkan membungkus dan mengatur tata letak widget lainnya. Container ideal untuk mengatur properti dasar dan menata widget lain dengan properti yang sudah ditentukan.

Kolom dan Row: Row dan Column membantu mengorganisir tata letak dalam satu arah dengan menyusun widget secara horizontal (Row) atau vertikal (Column). Membantu menyusun widget seperti tombol, teks, atau gambar dalam satu baris atau kolom untuk membuat tata letak linear.

ListView: ListView adalah widget yang digunakan untuk membuat daftar scrollable (bergulir) dari widget. Ini sangat berguna ketika memiliki daftar item yang mungkin lebih panjang dari layar perangkat. Cocok untuk menampilkan daftar item dalam aplikasi, seperti daftar pesan, kontak, atau berita.

Stack: Stack memungkinkan penumpukan widget di atas satu sama lain, memungkinkan tata letak yang lebih kompleks dan layering. Berguna ketika perlu menempatkan widget di atas widget lainnya, seperti dalam pembuatan overlay atau desain yang lebih kompleks.

Expanded dan Flexible: Expanded dan Flexible digunakan dalam Row atau Column untuk memberikan ukuran dinamis kepada widget. Ini membantu mendistribusikan ruang yang tersedia sesuai dengan proporsi tertentu. Berguna untuk membuat widget berukuran dinamis, terutama ketika ingin memberikan ruang lebih banyak kepada satu widget dibandingkan yang lain.

SizedBox: SizedBox digunakan untuk menentukan ukuran tepat untuk suatu widget atau memberikan ruang putih di antara widget. Berguna ketika perlu menentukan dimensi tepat dari suatu widget atau memberikan spasi di antara widget.

3. Sebutkan apa saja elemen input pada form yang kamu pakai pada tugas kali ini dan jelaskan mengapa kamu menggunakan elemen input tersebut!

TextFormField: Digunakan untuk memasukkan teks seperti nama produk, harga, dan deskripsi. Dapat digunakan untuk validasi dan mendapatkan nilai dari pengguna.
ElevatedButton: Digunakan sebagai tombol untuk mengirimkan atau menyimpan formulir.
AlertDialog: Menampilkan dialog dengan informasi produk setelah formulir disimpan.
4. Bagaimana penerapan clean architecture pada aplikasi Flutter? Clean Architecture adalah prinsip desain perangkat lunak yang menekankan pada pemisahan tanggung jawab antara komponen-komponen aplikasi. Dalam konteks aplikasi Flutter, Clean Architecture dapat diterapkan dengan membuat aplikasi terdiri dari tiga layer: Presentation, Domain, dan Data.

Layer Presentation adalah layer yang bertanggung jawab atas UI dan interaksi pengguna. Ini adalah layer di mana nanti akan menggunakan widget-widget Flutter seperti StatelessWidget dan StatefulWidget.

Layer Domain adalah layer yang bertanggung jawab atas bisnis logic aplikasi. Ini adalah layer di mana nanti akan mendefinisikan entitas, use case, dan repository.

Layer Data adalah layer yang bertanggung jawab atas komunikasi dengan sumber data eksternal seperti database atau API.

Dengan menerapkan Clean Architecture, akan membuat aplikasi Flutter lebih mudah untuk dipahami, diuji, dan dikelola

5. Jelaskan bagaimana cara kamu mengimplementasikan checklist di atas secara step-by-step! (bukan hanya sekadar mengikuti tutorial)

Menambahkan Menu Drawer untuk Navigasi

Membuat Berkas Baru:

Buat berkas left_drawer.dart di dalam direktori widgets.
Tambahkan widget Drawer dengan ListView di dalamnya.
Mengimpor Halaman:

Import halaman seperti MyHomePage dan ShopFormPage yang akan ditambahkan ke drawer.
Menambahkan Navigasi ke Drawer:

Tambahkan ListTile untuk setiap halaman yang ingin ditambahkan ke dalam routing drawer.
Gunakan Navigator.pushReplacement untuk mengarahkan ke halaman baru.
Menghias Drawer:

Tambahkan dekorasi dan teks pada bagian header drawer untuk memberikan tampilan yang menarik.
Sesuaikan desain dan tata letak sesuai dengan kebutuhan.
Mengintegrasikan Drawer ke Halaman:

Import drawer yang sudah dibuat ke halaman yang ingin ditambahkan drawer-nya.
Masukkan drawer sebagai nilai parameter drawer pada widget Scaffold.
Menampilkan Data

Membuat Berkas Form Baru:

Buat berkas shoplist_form.dart di dalam direktori lib.
Tambahkan widget Scaffold dengan AppBar dan drawer yang sudah dibuat sebelumnya.
Menambahkan Widget Form:

Gunakan widget Form sebagai wadah untuk bidang input.
Gunakan SingleChildScrollView untuk membuat form menjadi scrollable.
Mengimplementasikan Bidang Input:

Tambahkan TextFormField untuk setiap elemen input yang dibutuhkan.
Gunakan Padding dan Column untuk merapikan tata letak elemen input. V
Validasi Input:

Gunakan atribut onChanged pada TextFormField untuk mendeteksi perubahan nilai.
Terapkan validasi dengan atribut validator untuk memastikan input sesuai kebutuhan.
Menampilkan Data pada AlertDialog:

Gunakan showDialog ketika formulir tervalidasi.
Tampilkan data yang dimasukkan oleh pengguna pada AlertDialog.
Reset formulir setelah data ditampilkan.
Menambahkan Fitur Navigasi pada Tombol

Navigasi dari Tombol pada ShopItem:
Dalam fungsi onTap pada widget ShopItem, gunakan Navigator.push untuk melakukan navigasi ke halaman yang sesuai.
Refactoring File

Membuat Berkas Baru untuk Widget:

Buat berkas shop_card.dart di dalam direktori widgets.
Pindahkan konten widget ShopItem dari menu.dart ke shop_card.dart.
Mengimpor File ke dalam Folder:

Buat folder baru screens di dalam direktori lib.
Pindahkan berkas menu.dart dan shoplist_form.dart ke dalam folder screens.
Memastikan Refactoring Dilakukan dengan IDE:

Pastikan proses pemindahan berkas dilakukan melalui IDE atau text editor dengan ekstensi Flutter

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
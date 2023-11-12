NAMA : Rana Koesumastuti
NPM  : 2206083496
KELAS: A

TUGAS 7
**Perbedaan utama antara StatelessWidget dan StatefulWidget dalam konteks pengembangan aplikasi Flutter adalah:**

    1. StatelessWidget:
    Tidak memiliki keadaan (state) yang berubah. Itu berarti kontennya statis dan tidak bisa berubah setelah diinisialisasi.
    Direkomendasikan untuk widget yang tidak perlu mengelola perubahan keadaan.
    Widget ini lebih efisien karena tidak perlu mempertahankan keadaan.
    Contoh: teks statis, ikon, atau widget yang tidak berubah.

    2. StatefulWidget:
    Memiliki keadaan yang dapat berubah sepanjang waktu. Ini memungkinkan widget berinteraksi dengan data dinamis dan memperbarui tampilan saat keadaan berubah.
    Digunakan ketika kita perlu mengelola perubahan data, seperti input pengguna, data yang diambil dari server, atau perubahan data lainnya.
    Widget ini lebih kompleks daripada StatelessWidget karena kita perlu mengelola keadaan dan pembaruan tampilan.


**Widget-widget yang digunakan dan penjelasannya:**
Di bawah ini adalah penjelasan singkat tentang widget yang digunakan dalam kode saya:

    1. **MyApp**: Ini adalah widget yang mewakili aplikasi kita secara keseluruhan. Ini digunakan sebagai titik masuk utama aplikasi kita.

    2. **MaterialApp**: Ini adalah widget yang memberikan konfigurasi dan tema untuk aplikasi kita. Ini mengatur properti seperti judul, tema, dan tampilan halaman utama.

    3. **Scaffold**: Ini adalah widget yang memberikan kerangka dasar untuk tampilan utama aplikasi. Ini berisi AppBar, body, dan berbagai elemen lain seperti SnackBar.

    4. **AppBar**: Ini adalah widget yang menampilkan bar di bagian atas tampilan dengan judul aplikasi.

    5. **SingleChildScrollView**: Widget ini digunakan untuk mengizinkan konten di dalamnya dapat di-scroll jika melebihi ruang layar yang tersedia. Ini membantu menghindari masalah tampilan ketika konten melebihi layar.

    6. **Padding**: Ini adalah widget yang memberikan jarak atau padding di sekitar elemen-elemen di dalamnya. Dalam kode kita, digunakan untuk memberikan jarak antara elemen-elemen dalam tampilan.

    7. **Column**: Widget ini digunakan untuk menyusun daftar elemen secara vertikal. Ini membantu dalam menempatkan elemen-elemen dalam satu kolom.

    8. **GridView**: Widget ini digunakan untuk mengatur elemen-elemen dalam bentuk grid. Dalam kode saya, itu digunakan untuk menampilkan kartu item dalam tata letak grid.

    9. **Material**: Ini adalah widget yang memberikan efek visual sesuai dengan desain Material Design, seperti yang digunakan dalam komponen seperti InkWell.

    10. **InkWell**: Ini adalah widget yang merespons kejadian onTap, memberikan efek visual seperti gelombang tinta saat ditekan.

    11. **SnackBar**: Ini adalah widget yang digunakan untuk menampilkan pesan sementara di bagian bawah layar sebagai umpan balik kepada pengguna.

    12. **Text**: Widget ini digunakan untuk menampilkan teks.

    13. **Icon**: Ini adalah widget yang digunakan untuk menampilkan ikon grafis.

    14. **ShopItem**: Ini adalah kelas yang digunakan untuk mendefinisikan setiap item yang akan ditampilkan dalam kartu. Setiap item memiliki nama, ikon, dan warna yang berkaitan.

    15. **ShopCard**: Ini adalah widget yang digunakan untuk menampilkan kartu yang mewakili setiap item. Ini memiliki latar belakang berwarna sesuai dengan warna yang ditentukan dalam `ShopItem`.

**Langkah demi langkah implementasi yang kita ikuti adalah sebagai berikut:**

    1. Mulai dengan membuat proyek Flutter baru dengan nama "my_inventory" menggunakan perintah flutter create <APP_NAME> dan masuk ke direktori proyek tersebut.

    2. Lanjutkan merapikan struktur proyek dengan membuat file menu.dart untuk memisahkan widget MyHomePage dan kemudian tambahkan impor yang diperlukan.

    3. Selanjutnya kita perlu mengubah widget MyHomePage dalam menu.dart menjadi StatelessWidget dan menghapus stateful widget yang digunakan sebelumnya.

    4. Definisikan item yang dijual dalam bentuk daftar ShopItem yang memiliki nama dan ikon yang berkaitan.

    5. Tambahkan kode untuk menampilkan teks dan kartu yang mewakili item yang dijual di dalam widget MyHomePage. Kartu-kartu ini dihasilkan dari daftar ShopItem dengan menggunakan ShopCard.

    6. ShopCard adalah widget yang menampilkan setiap item sebagai kartu. Ini merespons sentuhan pengguna dengan menampilkan SnackBar sesuai dengan item yang ditekan. Cara menampilkan snackbar dengan potongan kode berikut: 

    ```
              // Memunculkan SnackBar ketika diklik
          ScaffoldMessenger.of(context)
            ..hideCurrentSnackBar()
            ..showSnackBar(SnackBar(
                content: Text("Kamu telah menekan tombol ${item.name}!")));
    ```
    Variabel item.name akan menyesuaikan dengan tombol mana yang diklik

**Penerapan bonus:**
    1. Perbarui kelas ShopItem dengan menambahkan properti color
    2. Tentukan warna yang berbeda untuk setiap item saat mendefinisikan daftar items
    3. Selanjutnya, dalam widget ShopCard, gunakan properti color dari ShopItem untuk mengatur warna latar belakang kartu


**READ ME UNTUK TUGAS 8**
**Perbedaan antara Navigator.push() dan Navigator.pushReplacement() di Flutter:**
Navigator.push() digunakan untuk menambahkan rute baru ke tumpukan rute.
Navigator.pushReplacement() juga menambahkan rute baru ke tumpukan rute, tetapi rute yang saat ini aktif akan dihapus dari tumpukan.
Contoh Penggunaan:
```
// Menggunakan Navigator.push() untuk menambahkan rute baru
Navigator.push(
  context,
  MaterialPageRoute(builder: (context) => NextScreen()),
);

// Menggunakan Navigator.pushReplacement() untuk menambahkan rute baru dan menggantikan rute saat ini
Navigator.pushReplacement(
  context,
  MaterialPageRoute(builder: (context) => NewScreen()),
);
```

**Layout Widgets pada Flutter:**
Container: Digunakan untuk mengatur dan mengelompokkan widget lain, serta dapat mengatur padding, margin, dan dekorasi.
Column: Menyusun widget secara vertikal.
Text: Menampilkan teks dengan gaya tertentu.
Padding: Menambahkan ruang kosong di sekitar widget anaknya.
Contoh Penggunaan:
```
Container(
  margin: EdgeInsets.all(10),
  padding: EdgeInsets.all(10),
  decoration: BoxDecoration(
    color: Colors.blue,
  ),
  child: Column(
    children: [
      Text(
        'My Inventory',
        style: TextStyle(
          fontSize: 30,
          fontWeight: FontWeight.bold,
          color: Colors.white,
        ),
      ),
      Padding(padding: EdgeInsets.all(10)),
      Text(
        "Catat seluruh keperluan belanjamu di sini!",
        style: TextStyle(
          fontSize: 15,
          color: Colors.white,
        ),
      ),
    ],
  ),
);
```

**Elemen Input pada Form:**
Pada tugas kali ini, Elemen input pada form ini menggunakan TextFormField untuk mengumpulkan data dari pengguna. Di dalam Column widget, terdapat tiga buah TextFormField yang masing-masing digunakan untuk mengumpulkan informasi tentang nama produk, harga, dan deskripsi. 
Input ini mengumpulkan nama_elemen produk dari pengguna.
onChanged digunakan untuk mengupdate variabel _elemen setiap kali nilai input berubah.
validator melakukan validasi untuk memastikan bahwa elemen tidak boleh kosong.

**Penerapan Clean Architecture pada Aplikasi Flutter:**
Clean Architecture adalah konsep pengembangan perangkat lunak yang memisahkan kode ke dalam lapisan-lapisan terpisah (domain, data, presentation) dengan prinsip dependency rule.
Pada aplikasi Flutter, implementasi clean architecture dapat melibatkan:
Domain Layer: Berisi aturan bisnis dan logika aplikasi.
Data Layer: Menangani pengambilan dan penyimpanan data.
Presentation Layer: Menangani antarmuka pengguna dan logika tampilan.
Contoh Struktur Folder:
```
lib/
  |- data/
     |- repositories/
  |- domain/
     |- entities/
     |- repositories/
     |- usecases/
  |- presentation/
     |- screens/
     |- widgets/
```
Keuntungan penerapan clean architecture termasuk pemisahan tugas, pengujian yang lebih mudah, dan kemampuan untuk mengganti implementasi detail tanpa mempengaruhi lapisan lain.

**langkah-langkah menerapkan checklist tugas:**
A. Menambahkan Drawer Menu Untuk Navigasi:

    1. Buat berkas baru untuk drawer: Buat berkas baru dengan nama left_drawer.dart di direktori widgets. Tambahkan kode yang diberikan di tutorial.

    2. Impor halaman yang akan diarahkan: Impor halaman-halaman yang ingin diarahkan dari drawer menu. Pada contoh ini, impor halaman MyHomePage dan ShopFormPage.

    3. Tambahkan routing untuk drawer: Pada bagian routing di dalam ListView pada berkas left_drawer.dart, tambahkan ListTile yang merujuk ke halaman-halaman yang diimpor sebelumnya. Tentukan aksi yang harus diambil ketika pengguna memilih opsi tersebut. Contohnya, pengguna akan diarahkan ke MyHomePage saat memilih "Halaman Utama" dan diarahkan ke ShopFormPage saat memilih "Tambah Produk".

    4. Hias drawer dengan DrawerHeader: Tambahkan widget DrawerHeader di bagian TODO: Bagian drawer header. Sesuaikan dengan desain yang diinginkan.

    5. Tambahkan drawer ke halaman yang diinginkan: Impor drawer yang telah dibuat (LeftDrawer) dan masukkan ke dalam properti drawer di dalam halaman yang ingin memiliki drawer.

    6. Uji coba: Jalankan program untuk memastikan bahwa drawer muncul dan navigasi berfungsi dengan benar.

B. Menambahkan Form dan Elemen Input:

    1. Buat berkas baru untuk form: Buat berkas baru dengan nama shoplist_form.dart. Tambahkan kode yang diberikan di tutorial.

    2. Impor drawer yang sudah dibuat: Impor drawer yang telah dibuat sebelumnya ke dalam berkas shoplist_form.dart.

    3. Buat GlobalKey<FormState>: Gunakan GlobalKey<FormState> untuk mengidentifikasi dan memanipulasi keadaan dari widget Form. Gunakan ini sebagai handler untuk form state, validasi form, dan penyimpanan form.

    4. Isi widget Form dengan elemen input: Isi widget Form dengan elemen input seperti TextFormField untuk mengumpulkan informasi tentang nama produk, harga, dan deskripsi. Setiap input divalidasi sesuai ketentuan yang dijelaskan.

    5. Tambahkan tombol "Save": Tambahkan tombol "Save" sebagai child dari Column. Gunakan ElevatedButton dan tentukan aksi yang diambil saat tombol ditekan. Di sini, kita menampilkan pop-up dengan informasi produk yang dimasukkan.

    6. Tambahkan fitur Navigasi pada Tombol "Save": Tambahkan fungsi showDialog() untuk menampilkan pop-up dengan informasi produk yang dimasukkan. Tambahkan juga fungsi untuk mereset form setelah tombol "Save" ditekan.

    7. Uji coba: Jalankan program, isi form, tekan tombol "Save", dan periksa apakah pop-up muncul dengan informasi produk yang dimasukkan.

C. Menambahkan Fitur Navigasi pada Tombol:

    1. Tambahkan fitur navigasi pada tombol "Tambah Produk": Pada widget ShopItem pada berkas menu.dart, tambahkan fitur navigasi ke halaman ShopFormPage ketika tombol "Tambah Produk" ditekan. Gunakan Navigator.push() untuk melakukan navigasi ke MaterialPageRoute yang mencakup ShopFormPage.

    2. Uji coba: Jalankan program, tekan tombol "Tambah Produk", dan pastikan bahwa navigasi berfungsi dengan benar.

# my_inventory

A new Flutter project.

## Getting Started

This project is a starting point for a Flutter application.

A few resources to get you started if this is your first Flutter project:

- [Lab: Write your first Flutter app](https://docs.flutter.dev/get-started/codelab)
- [Cookbook: Useful Flutter samples](https://docs.flutter.dev/cookbook)

For help getting started with Flutter development, view the
[online documentation](https://docs.flutter.dev/), which offers tutorials,
samples, guidance on mobile development, and a full API reference.

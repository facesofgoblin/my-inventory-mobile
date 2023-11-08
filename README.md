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

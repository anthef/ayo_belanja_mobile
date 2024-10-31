# Ayo Belanja
E-commerce terbaik untuk segala kalangan umur

- [Profile](#profile)
- [Tugas 7](#tugas-7)

## Profile

Nama    : Anthony Edbert Feriyanto  
NPM     : 2306165654  
Kelas   : PBP C  


# Tugas 7
## Pertanyaan dan Jawaban
1. **Jelaskan apa yang dimaksud dengan stateless widget dan stateful widget, dan jelaskan perbedaan dari keduanya.**

    **Jawab:**
    Stateless widget adalah widget yangtidak memiliki state yang bisa berubah selama siklus hidupnya. Stateless widget hanya menampilkan tampilan berdasarkan data yang diberikan padanya saat pertama kali dibuat. Stateless Widget cocok untuk komponen yang sifatnya statis, yaitu tidak mengalami perubahan data atau interaksi dengan pengguna yang menyebabkan perubahan tampilan. Contoh: Text, Icon, dan berbagai widget statis lain seperti dekorasi atau tata letak yang tidak berubah.

    Stateful Widget adalah widget yang memiliki state, yang berarti dapat berubah selama siklus hidup widget tersebut. Stateful Widget mampu merender ulang tampilan ketika terdapat perubahan pada data atau keadaan internal. Stateful Widget digunakan ketika tampilan widget perlu diperbarui berdasarkan interaksi pengguna atau perubahan data, seperti tombol yang berubah warna saat diklik, animasi, atau komponen yang diperbarui secara dinamis.
    Contoh: Form yang berubah berdasarkan input pengguna, slider, dan animasi yang memerlukan pembaruan tampilan secara berkala.

2. **Sebutkan widget apa saja yang kamu gunakan pada proyek ini dan jelaskan fungsinya.**

    **Jawab:**
    - Material App
    Berfungsi sebagai root aplikasi Flutter dan mengatur tema, nama aplikasi, serta konfigurasi awal. Ini mengatur navigasi dan tampilan keseluruhan aplikasi.
    - Scaffold
    Menyediakan struktur dasar layar, seperti AppBar, Body, dan Bottom Navigation. Di sini digunakan untuk membangun tampilan utama aplikasi.
    - Text
    Menampilkan teks statis atau dinamis sesuai dengan data yang diberikan.
    - Padding
    Menambahkan ruang di sekitar widget agar tampilan lebih rapi.
    - Column
    Mengatur tata letak widget secara vertikal
    - Row
    Mengatur tata letak secara horizontal
    - Card
    Menyediakan tampilan berupa kartu dengan elevation
    - GridView.builder
    Membuat tata letak berbentuk grid secara dinamis berdasarkan data yang ada. 
    - SliverGridDelegateWithFixedCrossAxisCount
    konfigurasi GridView yang menentukan jumlah kolom, spasi antar-kolom, dan antar-baris di grid.
    - ItemCard
    widget kustom yang menampilkan setiap item dalam grid dengan warna latar belakang tertentu dan ikon yang sesuai.
    - InkWell
    Memberikan efek ripple saat widget diketuk
    - MediaQuery
    Mendapatkan informasi ukuran layar, seperti lebar perangkat agar card lebih responsive terhadap layar
    - SnackBar
    Menampilkan notifikasi sementara di bagian bawah layar saat pengguna mengetuk item tertentu


3. **Apa fungsi dari `setState()`? Jelaskan variabel apa saja yang dapat terdampak dengan fungsi tersebut.**

    **Jawab:**

4. **Jelaskan perbedaan antara `const` dengan `final`.**

    **Jawab:**

5. **Jelaskan bagaimana cara kamu mengimplementasikan checklist-checklist di atas.**

    **Jawab:**


## Checklist Tugas

- [x] Membuat sebuah program Flutter baru dengan tema E-Commerce yang sesuai dengan tugas-tugas sebelumnya.
- [x] Membuat tiga tombol sederhana dengan ikon dan teks untuk:
    - [x] Melihat daftar produk (`Lihat Daftar Produk`)
    - [x] Menambah produk (`Tambah Produk`)
    - [x] Logout (`Logout`)
- [x] Mengimplementasikan warna-warna yang berbeda untuk setiap tombol (`Lihat Daftar Produk`, `Tambah Produk`, dan `Logout`).
- [x] Memunculkan `Snackbar` dengan tulisan:
    - [x] "Kamu telah menekan tombol Lihat Daftar Produk" ketika tombol `Lihat Daftar Produk` ditekan.
    - [x] "Kamu telah menekan tombol Tambah Produk" ketika tombol `Tambah Produk` ditekan.
    - [x] "Kamu telah menekan tombol Logout" ketika tombol `Logout` ditekan.
- [x] Menjawab beberapa pertanyaan berikut pada `README.md` pada root_folder.
    - [x] Jelaskan apa yang dimaksud dengan stateless widget dan stateful widget, dan jelaskan perbedaan dari keduanya.
    - [x] Sebutkan widget apa saja yang kamu gunakan pada proyek ini dan jelaskan fungsinya.
    - [x]  Apa fungsi dari `setState()`? Jelaskan variabel apa saja yang dapat terdampak dengan fungsi tersebut.
    - [x] Jelaskan perbedaan antara `const` dengan `final`.
    - [x] Jelaskan bagaimana cara kamu mengimplementasikan checklist-checklist di atas.
- [x] Melakukan `add`-`commit`-`push` ke suatu repositori baru di GitHub.
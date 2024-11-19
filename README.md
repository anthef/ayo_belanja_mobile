# Ayo Belanja
E-commerce terbaik untuk segala kalangan umur

- [Profile](#profile)
- [Tugas 7](#tugas-7)
- [Tugas 8](#tugas-8)
- [Tugas 9](#tugas-9)

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

    Fungsi `setState()` pada Flutter digunakan untuk memberi tahu framework bahwa ada perubahan pada state sebuah widget. Saat `setState()` dipanggil, Flutter akan merender ulang bagian widget yang terdampak agar tampilan menyesuaikan dengan perubahan data. Fungsi `setState()` hanya bekerja pada Stateful Widget. Pada code, dapat dilihat bahwa tidak terdapat fungsi `setState()` karena setiap widget yang digunakan merupakan Stateless Widget. Dan semua data, seperti nama, npm, dan kelas dinyatakan dalam tipe variabel final yang diinisialisasi sekali saat pembuatan widget dan tidak berubah sepanjang waktu. 


4. **Jelaskan perbedaan antara `const` dengan `final`.**

    **Jawab:**

    final digunakan untuk mendeklarasikan variabel yang hanya bisa diinisialisasi satu kali, tetapi nilai inisialisasinya dapat ditentukan pada saat runtime. Sedangkan const digunakan untuk mendeklarasikan variabel yang bersifat compile-time constant, yaitu nilainya harus sudah diketahui saat kompilasi dan tidak akan berubah atau bisa disebut juga sebagai variabel yang bersifat immutable. Selain itu, setelah diberi nilai, variabel final tidak bisa diubah. Serta semua objek const secara otomatis dianggap final, tetapi tidak semua final adalah const.

5. **Jelaskan bagaimana cara kamu mengimplementasikan checklist-checklist di atas.**

    **Jawab:**

    1. Membuat `main.dart` untuk base dari app yang akan dibuat. Terdapat fungsi `main()` untuk menjalankan widget-widget yang sudah dibuat. Serta menentukan colorScheme dari app.
    ```dart
    void main() {
    runApp(const MyApp());
    }

    class MyApp extends StatelessWidget {
    const MyApp({super.key});
    @override
    Widget build(BuildContext context) {
        return MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
        colorScheme: ColorScheme.fromSwatch(primarySwatch: Colors.deepPurple,).copyWith(secondary: Colors.deepPurple[400]),
            useMaterial3: true,
        ),
        debugShowCheckedModeBanner: false,
        home: MyHomePage(),
        );
    }
    }
    ```

    2. Membuat beberapa variabel final, constructor, dan list warna untuk memberikan warna yang berbeda di tiap button
    ```dart
    MyHomePage({super.key});
    final String npm = '2306165654';
    final String name = 'Anthony Edbert Feriyanto';
    final String className = 'PBP C';

    final List<ItemHomepage> items = [
        ItemHomepage("Lihat Daftar Produk", Icons.mood),
        ItemHomepage("Tambah Produk", Icons.add),
        ItemHomepage("Logout", Icons.logout),
    ];

    final List<Color> colors = [
        Colors.blue,
        Colors.green,
        Colors.orange,
        Colors.red,
        Colors.purple,
        Colors.yellow,
    ];
    ```

    3. Membuat class `ItemHomepage` yang memiliki atribut nama dan icon
    ```dart
    class ItemHomepage {
    final String name;
    final IconData icon;

    ItemHomepage(this.name, this.icon);
    }
    ```

    4. Membuat class `ItemCard` untuk menampung class-class `ItemHomePage` untuk menampung dan styling item name, icon, dan terdapat fungsi onTap() untuk menampilkan snackbar dengan fungsi built-in.
    ```dart
    class ItemCard extends StatelessWidget {
    final ItemHomepage item;
    final Color color;

    const ItemCard({super.key, required this.item, required this.color});

    @override
    Widget build(BuildContext context) {
        return Material(
        color: color,
        borderRadius: BorderRadius.circular(12),
        child: InkWell(
            onTap: () {
            ScaffoldMessenger.of(context)
                ..hideCurrentSnackBar()
                ..showSnackBar(
                SnackBar(content: Text("Kamu telah menekan tombol ${item.name}!"))
                );
            },
            child: Container(
            padding: const EdgeInsets.all(8),
            child: Center(
                child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                    Icon(
                    item.icon,
                    color: Colors.white,
                    size: 30.0,
                    ),
                    const Padding(padding: EdgeInsets.all(3)),
                    Text(
                    item.name,
                    textAlign: TextAlign.center,
                    style: const TextStyle(color: Colors.white),
                    ),
                ],
                ),
            ),
            ),
        ),
        );
    }
    }
    ```

    5. Membuat fungsi wajib pada widget utama. Membaut 1 row untuk menampilkan npm, nama, dan kelas. Dan juga membuat GridView untuk menampilkan `ItemCard` dan membuat item builder yang sifatnya seperti looping untuk menampilkan masing-masing button sesuai dengan list warna yang sudah dibuat.
    ```dart
    @override
    Widget build(BuildContext context) {
        return Scaffold(
        appBar: AppBar(
            title: const Text(
            'Ayo Belanja',
            style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
            ),
            ),
            backgroundColor: Theme.of(context).colorScheme.primary,
        ),
        body: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
                Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                    InfoCard(title: 'NPM', content: npm),
                    InfoCard(title: 'Name', content: name),
                    InfoCard(title: 'Class', content: className),
                ],
                ),
                const SizedBox(height: 16.0),
                Center(
                child: Column(
                    children: [
                    const Padding(
                        padding: EdgeInsets.only(top: 16.0),
                        child: Text(
                        'Welcome to Ayo Belanja',
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 18.0,
                        ),
                        ),
                    ),
                    GridView.builder(
                        primary: true,
                        padding: const EdgeInsets.all(20),
                        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 3,
                        crossAxisSpacing: 10,
                        mainAxisSpacing: 10,
                        ),
                        shrinkWrap: true,
                        itemCount: items.length,
                        itemBuilder: (context, index) {
                        return ItemCard(item: items[index], color: colors[index % colors.length]);
                        },
                    ),
                    ],
                ),
                ),
            ],
            ),
        ),
        );
    }
    ```


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


# Tugas 8
## Pertanyaan dan Jawaban
1. **Apa kegunaan `const` di Flutter? Jelaskan apa keuntungan ketika menggunakan `const` pada kode Flutter. Kapan sebaiknya kita menggunakan `const`, dan kapan sebaiknya tidak digunakan?**

    **Jawab:**

    Penggunaan `const` digunakan dalam meningkatkan efisiensi performa dan mengoptimalkan memori. `const` dapat membuat objek yang immutable, atau tidak bisa diubah setelah diinisialisasi, yang biasa digunakan untuk widget atau elemen UI yang statis. Objek `const` hanya dibuat satu kali di memori dan bisa digunakan berulang kali tanpa membuat salinan baru. Hal ini mengurangi alokasi memori dan mempercepat rendering UI, karena widget yang ditandai dengan `const` tidak perlu di-rebuild setiap kali tampilan di-refresh. Selain itu, dengan `const`, Flutter dapat melakukan optimalisasi lebih lanjut saat kompilasi, karena nilai-nilai tersebut sudah diketahui sejak awal, sehingga aplikasi berjalan lebih efisien.

    `Const` sebaiknya digunakan untuk elemen statis yang tidak berubah, misalnya untuk teks, ikon, atau konfigurasi tetap seperti warna dan ukuran. Namun, `const` tidak cocok untuk objek dinamis yang berubah berdasarkan input pengguna atau kondisi aplikasi, karena objek tersebut akan membutuhkan rebuild saat ada perubahan. Pada objek yang nilainya tidak bisa dipastikan di awal kompilasi atau harus dinamis, seperti data dari API atau variabel yang diubah pengguna, `const` tidak bisa digunakan.

2. **Jelaskan dan bandingkan penggunaan `Column` dan `Row` pada Flutter. Berikan contoh implementasi dari masing-masing layout widget ini!**

    **Jawab:**
    Column adalah widget yang menyusun childnya secara vertikal dari atas ke bawah. Column digunakan saat ingin menempatkan beberapa elemen di layar dengan susunan bertingkat ke bawah.

    Row adalah widget yang menyusun childnya secara horizontal dari kiri ke kanan. Row digunakan saat ingin menempatkan beberapa elemen dalam satu baris atau sejajar secara horizontal.

    Contoh implementasi Column:


    Contoh implementasi Row:
    ```dart
    Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                InfoCard(title: 'NPM', content: npm),
                InfoCard(title: 'Name', content: name),
                InfoCard(title: 'Class', content: className),
              ],
            ),
    ```
    Hasil implementasi Row:
    (https://github.com/anthef/ayo_belanja_mobile/blob/main/static/hasil_row.png)

    Contoh implementasi Column:
    ```dart
    Column(
          children: [
            Text(
              title,
              style: const TextStyle(fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 8.0),
            Text(content),
          ],
        ),
    ```
    Hasil implementasai Column:
    (https://github.com/anthef/ayo_belanja_mobile/blob/main/static/hasil_column.png)

3. **Sebutkan apa saja elemen input yang kamu gunakan pada halaman form yang kamu buat pada tugas kali ini. Apakah terdapat elemen input Flutter lain yang tidak kamu gunakan pada tugas ini? Jelaskan!**

    **Jawab:**

    Pada halaman form yang dibuat ini, elemen input yang digunakan terdiri dari tiga TextFormField, yaitu:

    - Name: Menggunakan TextFormField untuk memasukkan teks yang merepresentasikan nama produk. Field ini dilengkapi dengan validasi agar tidak kosong dan memiliki panjang karakter antara 1 hingga 1000.

    - Amount: Juga menggunakan TextFormField dengan keyboardType disetel ke TextInputType.number untuk memastikan input adalah angka. Elemen ini divalidasi agar tidak kosong, harus berupa angka positif, dan tidak boleh bernilai negatif.

    - Description: Menggunakan TextFormField untuk memasukkan deskripsi produk. Field ini juga divalidasi agar tidak kosong dan panjang karakter minimal 10 hingga maksimal 2000.

    Dan ada elemen input lain yang tidak digunakan, seperti:
    Checkbox: Digunakan untuk membuat opsi yang bisa dicentang, biasanya untuk persetujuan atau pengaturan pilihan biner.

    - Radio: Digunakan untuk membuat pilihan dalam kelompok di mana hanya satu opsi yang dapat dipilih pada satu waktu.

    - Switch: Digunakan untuk mengaktifkan atau menonaktifkan pengaturan dengan tampilan switch yang lebih interaktif.

    - DropdownButton: Digunakan untuk membuat pilihan yang dapat dipilih dari daftar yang ditampilkan saat tombol ditekan.

    - Slider: Digunakan untuk memilih nilai dari rentang tertentu, biasanya untuk mengatur volume, kecerahan, atau pengaturan tingkat lainnya.

    - DatePicker: Digunakan untuk memilih tanggal, biasanya digunakan pada aplikasi yang memerlukan input tanggal seperti pemesanan atau penjadwalan.

4. **Bagaimana cara kamu mengatur tema (theme) dalam aplikasi Flutter agar aplikasi yang dibuat konsisten? Apakah kamu mengimplementasikan tema pada aplikasi yang kamu buat?**

    **Jawab:**

    Ya, saya mengimplementasikan tema pada aplikasi yang saya buat. Saya mendefinisikan warna utama dan warna sekunder menggunakan ThemeData dalam theme pada MaterialApp di `main.dart`. Warna utama dan sekunder diatur melalui ColorScheme. Misalnya, di kode ini, primarySwatch disetel ke Colors.deepPurple, dan warna sekunder (secondary) disetel ke warna ungu yang lebih terang.

5. **Bagaimana cara kamu menangani navigasi dalam aplikasi dengan banyak halaman pada Flutter?**

    **Jawab:**
    Metode navigasi yang saya gunakan dalam aplikasi ini adalah metode `Navigator.push` dan `Navigator.pop`. Metode `Navigator.push` digunakan untuk menambahkan halaman baru ke dalam *stack* navigasi. Dengan `push`, halaman baru ditempatkan di atas halaman sebelumnya, sehingga halaman tersebut akan menjadi halaman aktif yang dilihat oleh pengguna. Halaman sebelumnya tetap ada di dalam *stack*, sehingga pengguna dapat kembali ke sana jika diperlukan.

    Sebaliknya, metode `Navigator.pop` digunakan untuk kembali ke halaman sebelumnya dalam *stack*. Ketika `pop` dipanggil, Flutter menghapus halaman aktif dari *stack* dan kembali ke halaman sebelumnya. Hal ini berguna dalam situasi di mana pengguna telah menyelesaikan suatu interaksi pada halaman saat ini dan ingin kembali. 

    Selain itu, saya juga membuat sebuah drawer untuk mempermudah navigasi di dalam app.

## Checklist Tugas
- [x] Membuat minimal satu halaman baru pada aplikasi, yaitu halaman formulir tambah item baru dengan ketentuan sebagai berikut:
  - [x] Memakai minimal tiga elemen input, yaitu `name`, `amount`, `description`. Tambahkan elemen input sesuai dengan model pada aplikasi tugas Django yang telah kamu buat.
  - [x] Memiliki sebuah tombol `Save`.
  - [x] Setiap elemen input di formulir juga harus divalidasi dengan ketentuan sebagai berikut:
    - [x] Setiap elemen input tidak boleh kosong.
    - [x] Setiap elemen input harus berisi data dengan tipe data atribut modelnya.
- [x] Mengarahkan pengguna ke halaman form tambah item baru ketika menekan tombol `Tambah Item` pada halaman utama.
- [x] Memunculkan data sesuai isi dari formulir yang diisi dalam sebuah `pop-up` setelah menekan tombol Save pada halaman formulir tambah item baru.
- [x] Membuat sebuah drawer pada aplikasi dengan ketentuan sebagai berikut:
  - [x] Drawer minimal memiliki dua buah opsi, yaitu `Halaman Utama` dan `Tambah Item`.
  - [x] Ketika memiih opsi `Halaman Utama`, maka aplikasi akan mengarahkan pengguna ke halaman utama.
  -[x]  Ketika memiih opsi `Tambah Item`, maka aplikasi akan mengarahkan pengguna ke halaman form tambah item baru.
- [x] Menjawab beberapa pertanyaan berikut pada `README.md` pada root folder (silakan modifikasi `README.md` yang telah kamu buat sebelumnya; tambahkan subjudul untuk setiap tugas).
  - [x] Apa kegunaan `const` di Flutter? Jelaskan apa keuntungan ketika menggunakan `const` pada kode Flutter. Kapan sebaiknya kita menggunakan `const`, dan kapan sebaiknya tidak digunakan?
  - [x] Jelaskan dan bandingkan penggunaan `Column` dan `Row` pada Flutter. Berikan contoh implementasi dari masing-masing layout widget ini!
  - [x] Sebutkan apa saja elemen input yang kamu gunakan pada halaman form yang kamu buat pada tugas kali ini. Apakah terdapat elemen input Flutter lain yang tidak kamu gunakan pada tugas ini? Jelaskan!
  - [x] Bagaimana cara kamu mengatur tema (theme) dalam aplikasi Flutter agar aplikasi yang dibuat konsisten? Apakah kamu mengimplementasikan tema pada aplikasi yang kamu buat?
  - [x] Bagaimana cara kamu menangani navigasi dalam aplikasi dengan banyak halaman pada Flutter?
- [x] Melakukan `add`-`commit`-`push` ke GitHub.


# Tugas 9
## Pertanyaan dan Jawaban

1. **Jelaskan mengapa kita perlu membuat model untuk melakukan pengambilan ataupun pengiriman data JSON? Apakah akan terjadi error jika kita tidak membuat model terlebih dahulu?**

    **Jawab:**

    Model berfungsi sebagai representasi terstruktur dari data yang dikirim atau diterima, memungkinkan untuk bekerja dengan data tersebut secara lebih efisien dan aman. Dengan mendefinisikan model, kita bisa memastikan bahwa setiap atribut data memiliki tipe yang spesifik, yang membantu mencegah kesalahan tipe data yang dapat terjadi saat mengakses atau memanipulasi data tersebut. Model juga memudahkan pemrosesan data karena memungkinkan operasi seperti filtering, sorting, atau manipulasi lainnya dilakukan dengan lebih intuitif dan aman. Model juga meningkatkan keberlanjutan dan pemeliharaan kode karena struktur yang lebih terorganisir dan mudah dipahami, terutama ketika proyek berkembang dan melibatkan lebih banyak tim. Dengan model, perubahan pada struktur JSON hanya perlu diperbarui di satu tempat, yaitu di dalam model itu sendiri, sehingga mengurangi risiko kesalahan dan meningkatkan efisiensi dalam pemeliharaan kode.

    Tanpa model, kita harus menangani data JSON secara langsung sebagai `Map<String, dynamic>` atau `dynamic`, yang tidak hanya meningkatkan risiko kesalahan tipe data dan kesalahan ketik, tetapi juga membuat pemrosesan data menjadi lebih rumit dan kurang terstruktur. Hal ini dapat menyebabkan kode menjadi berantakan dan sulit dipelihara, terutama pada proyek yang lebih besar dan kompleks. Selain itu, tanpa model, aplikasi akan lebih rentan terhadap error saat runtime karena tidak ada jaminan bahwa data yang diakses memiliki tipe yang benar atau bahwa semua key yang diperlukan ada dalam JSON.

2. **Jelaskan fungsi dari library http yang sudah kamu implementasikan pada tugas ini**

    **Jawab:**

    Library HTTP yang digunakan berfungsi untuk melakukan berbagai jenis permintaan HTTP seperti GET, POST, dan lainnya, memungkinkan aplikasi untuk berkomunikasi dengan server atau API eksternal. Dengan menggunakan library ini, pengembang dapat dengan mudah mengirim dan menerima data dalam format JSON, yang merupakan format data yang umum digunakan untuk pertukaran informasi antar aplikasi. Selain itu, library ini juga menangani autentikasi melalui header, memastikan bahwa setiap permintaan yang dikirimkan terverifikasi dan memiliki hak akses yang sesuai.

    Lebih lanjut, library HTTP ini menyediakan fitur-fitur tambahan yang memudahkan pengelolaan komunikasi antara klien dan server. Misalnya, pengelolaan sesi autentikasi yang aman dan efisien dapat dilakukan melalui pengaturan header yang tepat, seperti penggunaan token autentikasi atau kunci API. Selain itu, library ini mendukung penanganan respons dari server, termasuk parsing data yang diterima dan pengelolaan error yang mungkin terjadi selama proses komunikasi. 

3. **Jelaskan fungsi dari CookieRequest dan jelaskan mengapa instance CookieRequest perlu untuk dibagikan ke semua komponen di aplikasi Flutter.**

    **Jawab:**

    CookieRequest berfungsi secara otomatis dalam mengelola cookie untuk autentikasi berbasis sesi, memastikan bahwa sesi pengguna tetap konsisten antar setiap permintaan yang dilakukan. Dengan demikian, proses autentikasi menjadi lebih sederhana dan efisien, karena CookieRequest menangani penyimpanan dan pengiriman cookie tanpa perlu intervensi manual dari pengembang. Hal ini tidak hanya meningkatkan keamanan dengan menjaga integritas sesi, tetapi juga mempercepat interaksi pengguna dengan aplikasi karena sesi yang konsisten mengurangi kebutuhan untuk autentikasi ulang secara berulang.

    Selain itu, penting untuk membagikan CookieRequest di seluruh aplikasi agar sesi autentikasi tetap konsisten dan efisien tanpa harus membuat instance baru setiap kali dibutuhkan. Dengan membagikan CookieRequest, pengelolaan autentikasi menjadi lebih mudah dan terpusat, memungkinkan pengembang untuk mengontrol sesi pengguna secara menyeluruh dan memastikan bahwa semua bagian aplikasi dapat mengakses sesi yang sama dengan lancar. Pendekatan ini juga mengoptimalkan penggunaan sumber daya aplikasi, menghindari redundansi, dan memudahkan pemeliharaan serta skalabilitas aplikasi secara keseluruhan.

4. **Jelaskan mekanisme pengiriman data mulai dari input hingga dapat ditampilkan pada Flutter.**

    **Jawab:**
    Proses pengiriman data dalam aplikasi Flutter dimulai ketika pengguna memasukkan informasi melalui elemen antarmuka seperti formulir atau widget input lainnya. Data yang diinput kemudian divalidasi secara lokal untuk memastikan kesesuaiannya sebelum diubah menjadi format JSON. Setelah data diformat, aplikasi menggunakan library HTTP untuk mengirim permintaan ke backend melalui metode seperti POST, disertai dengan header yang diperlukan seperti Content-Type: application/json dan token autentikasi jika diperlukan. Backend kemudian menerima dan memproses data tersebut, melakukan validasi lebih lanjut, menyimpan informasi ke database, atau menjalankan logika bisnis lainnya sebelum mengembalikan respons dalam format JSON kepada aplikasi Flutter.

    Setelah menerima respons dari backend, aplikasi Flutter akan mengurai data JSON tersebut menjadi objek Dart yang sesuai dan menangani setiap potensi error yang mungkin terjadi selama proses komunikasi. Data yang telah diuraikan kemudian digunakan untuk memperbarui state aplikasi melalui mekanisme manajemen state seperti setState, Provider, atau Bloc, sehingga antarmuka pengguna dapat di-render ulang dengan informasi terbaru. Misalnya, setelah berhasil mendaftar, aplikasi akan menampilkan pesan konfirmasi kepada pengguna. Dengan demikian, mekanisme ini memastikan bahwa setiap interaksi pengguna dengan aplikasi berlangsung secara efisien dan responsif, mulai dari pengisian input hingga tampilan hasil di antarmuka pengguna.

5. **Jelaskan mekanisme autentikasi dari login, register, hingga logout. Mulai dari input data akun pada Flutter ke Django hingga selesainya proses autentikasi oleh Django dan tampilnya menu pada Flutter.**

    **Jawab:**

    Data dikirim ke Django, validasi dilakukan (login/session atau simpan data), response diterima Flutter, dan UI diupdate sesuai status autentikasi.

6. **Jelaskan bagaimana cara kamu mengimplementasikan checklist di atas secara step-by-step! (bukan hanya sekadar mengikuti tutorial).**

    **Jawab:**
    
    1. Mengimplementasikan fitur register,login, dan logout pada project django. Serta menambahkan pbp_django_auth dan provider dan menambahkan cookie request pada page yang membutuhkan.

    2. Membuat model custom untuk melkukan parsing data pada json

    3. Membuat halaman yang menampilkan semua daftar item yang terdapat pada endpoint JSON di django yang terlah di deploy, yaitu name, price dan description

    4. Membuat halaman detail untuk setiap item yang terdapat pada halaman daftar Item dan Tampilkan seluruh atribut pada model item kamu pada halaman ini.

    5. Melakukan filter pada halaman daftar item dengan hanya menampilkan item yang terasosiasi dengan pengguna yang login.

    6. Menambahkan list product pada left drawer

    7. Menambahkan post json pada form pembuatan product.

    8. Membuat suatu login dan register page yang terintegrasi dengan views di django.

## Checklist Tugas
- [x] Memastikan deployment proyek tugas Django kamu telah berjalan dengan baik.
- [x] Mengimplementasikan fitur registrasi akun pada proyek tugas Flutter.
- [x] Membuat halaman login pada proyek tugas Flutter.
- [x] Mengintegrasikan sistem autentikasi Django dengan proyek tugas Flutter.
- [x] Membuat model kustom sesuai dengan proyek aplikasi Django.
- [x] Membuat halaman yang berisi daftar semua item yang terdapat pada endpoint JSON di Django yang telah kamu deploy.
  - [x] Tampilkan name, price, dan description dari masing-masing item pada halaman ini.
- [x] Membuat halaman detail untuk setiap item yang terdapat pada halaman daftar Item.
  - [x] Halaman ini dapat diakses dengan menekan salah satu item pada halaman daftar Item.
  - [x] Tampilkan seluruh atribut pada model item kamu pada halaman ini.
  - [x] Tambahkan tombol untuk kembali ke halaman daftar item.
- [x] Melakukan filter pada halaman daftar item dengan hanya menampilkan item yang terasosiasi dengan pengguna yang login.
- [x] Menjawab beberapa pertanyaan berikut pada `README.md` pada root folder (silakan modifikasi `README.md` yang telah kamu buat sebelumnya; tambahkan subjudul untuk setiap tugas).
  - [x] Jelaskan mengapa kita perlu membuat model untuk melakukan pengambilan ataupun pengiriman data JSON? Apakah akan terjadi error jika kita tidak membuat model terlebih dahulu?
  - [x] Jelaskan fungsi dari library http yang sudah kamu implementasikan pada tugas ini
  - [x] Jelaskan fungsi dari CookieRequest dan jelaskan mengapa instance CookieRequest perlu untuk dibagikan ke semua komponen di aplikasi Flutter.
  - [x] Jelaskan mekanisme pengiriman data mulai dari input hingga dapat ditampilkan pada Flutter.
  - [x] Jelaskan mekanisme autentikasi dari login, register, hingga logout. Mulai dari input data akun pada Flutter ke Django hingga selesainya proses autentikasi oleh Django dan tampilnya menu pada Flutter.
  - [x] Jelaskan bagaimana cara kamu mengimplementasikan checklist di atas secara step-by-step! (bukan hanya sekadar mengikuti tutorial).
- [x] Melakukan `add`-`commit`-`push` ke GitHub.

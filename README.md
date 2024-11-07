# Ayo Belanja
E-commerce terbaik untuk segala kalangan umur

- [Profile](#profile)
- [Tugas 7](#tugas-7)
- [Tugas 8](#tugas-8)

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

2. **Jelaskan dan bandingkan penggunaan `Column` dan `Row` pada Flutter. Berikan contoh implementasi dari masing-masing layout widget ini!**

    **Jawab:**

3. **Sebutkan apa saja elemen input yang kamu gunakan pada halaman form yang kamu buat pada tugas kali ini. Apakah terdapat elemen input Flutter lain yang tidak kamu gunakan pada tugas ini? Jelaskan!**

    **Jawab:**

4. **Bagaimana cara kamu mengatur tema (theme) dalam aplikasi Flutter agar aplikasi yang dibuat konsisten? Apakah kamu mengimplementasikan tema pada aplikasi yang kamu buat?**

    **Jawab:**

5. **Bagaimana cara kamu menangani navigasi dalam aplikasi dengan banyak halaman pada Flutter?**

    **Jawab:**

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

## Tugas Individu 7 PBP 
<details>

### Jelaskan apa yang dimaksud dengan **stateless** widget dan stateful widget, dan jelaskan perbedaan dari keduanya.

**Stateless Widget** adalah widget yang tidak mengalami perubahan bahkan jika ada interaksi pengguna atau perubahan nilai variabel. Sekali dibangun, tampilannya tetap. Sedangkan **Stateful Widget** adalah widget yang bisa berubah karena interaksi pengguna atau perubahan nilai variabel membuat tampilannya dinamis.

perbedaan utamanya adalah setelah tahap *Constructor* dan *Build*, stateless widget mempertahankan tampilan yang sama. Sementara pada stateful widget, tampilan dapat berubah sesuai pembaruan state yang memungkinkan respons terhadap perubahan atau interaksi baru.
import 'package:flutter/material.dart';
import 'package:effendy_bouquet/screens/menu.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Effendy Bouquet',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSwatch(
          primarySwatch: Colors.orange, // Set primary color to orange
        ).copyWith(
          secondary: Colors.yellow, // Set secondary color to yellow
        ),
        useMaterial3: true,
      ),
      home: const MyHomePage(),
    );
  }
}

###  Sebutkan widget apa saja yang kamu gunakan pada proyek ini dan jelaskan fungsinya.

1. Material app (mengatur tema aplikasi dan memulai dari halaman MyHomePage)
2. Scaffold (membentuk layout utama halaman dengan bagian atas yang diisi oleh AppBar)
3. AppBar (menampilkan judul “Effendy Bouquet” dengan gaya teks yang khusus)
4. SnackBar (menampilkan pesan sementara di bagian bawah layar sebagai notifikasi singkat)
5. InfoCard (menampilkan informasi seperti NPM, Name, dan Class dengan tampilan kotak)

### Apa fungsi dari ```setState()?``` Jelaskan variabel apa saja yang dapat terdampak dengan fungsi tersebut.

Fungsi ```setState()``` untuk memberi tahu aplikasi bahwa ada perubahan pada suatu bagian data (state) di dalam komponen. Saat ada perubahan ini, komponen akan merespons dengan memperbarui tampilannya. Dengan ```setState()```, Flutter akan menyadari bahwa tampilan perlu diperbarui sesuai dengan data terbaru. Semua variabel yang dideklarasikan dalam *State* dari *StatefulWidget* akan terpengaruh oleh perubahan melalui ```setState()```.

### Jelaskan perbedaan antara ```const``` dengan ```final```.

```Final``` dan ```const``` adalah cara untuk menetapkan variabel agar nilainya tidak dapat diubah (immutable). Namun, ada perbedaan utama antara keduanya:

1. **Final** adalah variabel ```final``` hanya bisa ditetapkan nilainya sekali dan wajib diberi nilai saat dideklarasikan. Namun, nilainya dapat diperoleh secara dinamis saat program berjalan, seperti mengambil tanggal hari ini. Setelah ditetapkan, nilai ini tidak bisa diubah.

2. **Const** adalah variabel ```const``` juga tidak dapat diubah nilainya, tetapi harus sudah memiliki nilai tetap saat program mulai berjalan. Artinya, nilai ini harus sudah ditentukan pada waktu kompilasi, bukan dari hasil proses atau input yang diperoleh saat program berjalan.

### Jelaskan bagaimana cara kamu mengimplementasikan checklist-checklist di atas.

1. Membuat Proyek Flutter Baru
Buka terminal atau command prompt dan buat proyek Flutter baru dengan nama ```effendy_bouquet```:

    ```bash
    flutter create effendy_bouquet
    cd effendy_bouquet
    ```
2. Menyiapkan File ```menu.dart``` dan menghubungkannya dengan ```main.dart```.
3. Memodifikasi ```main.dart``` untuk menampilkan ```MenuPage``` sebagai halaman utama aplikasi.
4. Menjalankan aplikasi dengan command:
    ```bash
    flutter run
    ```


### Referensi

https://buildwithangga.com/tips/mengenal-stateless-dan-stateful-widget-pada-flutter#:~:text=Stateless%20Widget%20adalah%20widget%20yang,variabel%20dan%20nilai%20yang%20ditemukan.


https://id.legacy.reactjs.org/docs/faq-state.html


https://thengoding.com/2021/07/07/dart-programming-constant-and-final

</details>


## Tugas Individu 8 PBP 
<details>


### Apa kegunaan const di Flutter? Jelaskan apa keuntungan ketika menggunakan const pada kode Flutter. Kapan sebaiknya kita menggunakan const, dan kapan sebaiknya tidak digunakan?

Di Flutter, `const` digunakan untuk membuat objek yang bersifat tetap (_immutable_) sehingga hanya dibuat sekali di memori yang menghemat ruang dan meningkatkan kinerja aplikasi. `const` ideal digunakan pada widget atau nilai yang tidak berubah, seperti `Text('Hello')` atau `const Color(0xFF42A5F5)` karena tidak perlu di-render ulang setiap kali widget dibangun. Namun, `const` sebaiknya tidak digunakan untuk data atau widget yang dinamis dan bisa berubah, seperti data yang diperoleh dari API atau input pengguna karena objek ini perlu di-update seiring perubahan data.

### Jelaskan dan bandingkan penggunaan Column dan Row pada Flutter. Berikan contoh implementasi dari masing-masing layout widget ini!

Row dan Column adalah widget di Flutter yang digunakan untuk menempatkan elemen secara berurutan. Row menampilkan elemen-elemen secara horizontal, dari kiri ke kanan, seperti LinearLayout horizontal di Android. Sementara itu, Column berfungsi untuk menempatkan elemen secara vertikal, dari atas ke bawah, seperti LinearLayout vertikal.

Perbedaan utama keduanya adalah arah tata letaknya. Row digunakan untuk tampilan berdampingan secara horizontal, sedangkan Column cocok untuk tampilan bertumpuk secara vertikal. Keduanya bisa menyebabkan overflow jika jumlah elemen terlalu banyak untuk ruang yang tersedia — Row akan meluap secara horizontal, sementara Column secara vertikal.

Row: 
``` bash
dart 
Row(
  children: [
    Icon(Icons.star),
    Text('Favorite'),
  ],
) 
```

Column:

```bash
dart
Column(
  children: [
    Icon(Icons.star),
    Text('Favorite'),
  ],
)
```


### Sebutkan apa saja elemen input yang kamu gunakan pada halaman form yang kamu buat pada tugas kali ini. Apakah terdapat elemen input Flutter lain yang tidak kamu gunakan pada tugas ini? Jelaskan!

Elemen input yang digunakan
- TextFormField: Digunakan untuk input teks seperti name, price, description and quantity.
- ElevatedButton: Sebagai tombol untuk menyimpan atau mengirim data form.

Elemen input yang tidak digunakan
- Checkbox: Digunakan untuk pilihan dengan opsi true atau false.
- Radio Button: Memungkinkan pengguna memilih satu opsi dari beberapa pilihan.
- Switch: Berfungsi seperti Checkbox, tetapi lebih modern dalam tampilan on/off.
- Slider: Untuk memilih nilai dari rentang tertentu, seperti skala intensitas.
- Dropdown Button: Untuk pilihan yang menampilkan daftar pilihan tertentu.

### Bagaimana cara kamu mengatur tema (theme) dalam aplikasi Flutter agar aplikasi yang dibuat konsisten? Apakah kamu mengimplementasikan tema pada aplikasi yang kamu buat?

Dalam aplikasi Flutter yang saya buat saya sudah mengimplementasikan tema (theme) untuk menjaga konsistensi tampilan di seluruh aplikasi. Pengaturan tema dilakukan dengan menggunakan properti `ThemeData` di dalam `MaterialApp` di root widget.

Pada kode yang saya buat, saya mengatur `colorScheme` dengan `primarySwatch` warna orange untuk menentukan warna utama yang dipakai di aplikasi dan warna sekunder dengan kode warna `Colors.orange` untuk memberikan aksen pada beberapa elemen lain. Selain itu, saya juga mengaktifkan `Material3`, yang menerapkan gaya Material Design versi terbaru, sehingga tampilan aplikasi terlihat lebih modern dan sesuai dengan standar desain terbaru.

Dengan pengaturan ini, aplikasi sudah memiliki warna yang konsisten pada berbagai elemen seperti AppBar dan tombol, sehingga tampilan antar halaman menjadi lebih seragam.

### Bagaimana cara kamu menangani navigasi dalam aplikasi dengan banyak halaman pada Flutter?

Berikut adalah penjelasan yang lebih sederhana dari kalimat tersebut:

Salah satu cara untuk berpindah antar halaman dalam aplikasi adalah dengan menggunakan widget **navigator**. Untuk membuka halaman baru, kita bisa mengakses navigator melalui **BuildContext** dan menggunakan beberapa fungsi berikut:

- **push()**: Fungsi ini akan menambahkan halaman baru ke dalam daftar halaman yang dikelola oleh Navigator. Halaman baru ini akan muncul di layar, menggantikan halaman yang sebelumnya.
  
- **pop()**: Fungsi ini akan menutup halaman yang sedang ditampilkan dan kembali ke halaman sebelumnya yang ada di daftar halaman Navigator.

- **pushReplacement()**: Fungsi ini akan menutup halaman yang sedang ditampilkan dan langsung menggantinya dengan halaman baru. Halaman baru ini akan menggantikan halaman lama di atas daftar halaman Navigator tanpa mengubah halaman yang ada di bawahnya.

Dengan menggunakan fungsi-fungsi ini, kita bisa dengan mudah berpindah antar halaman dalam aplikasi.


### Referensi

https://medium.com/@yogiwisesa/flutter-row-column-5aba99c74444


</details>

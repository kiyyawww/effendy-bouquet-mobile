## Tugas Individu 7 PBP 
<details>

### Jelaskan apa yang dimaksud dengan **stateless** widget dan stateful widget, dan jelaskan perbedaan dari keduanya.

**Stateless Widget** adalah widget yang tidak mengalami perubahan bahkan jika ada interaksi pengguna atau perubahan nilai variabel. Sekali dibangun, tampilannya tetap. Sedangkan **Stateful Widget** adalah widget yang bisa berubah karena interaksi pengguna atau perubahan nilai variabel membuat tampilannya dinamis.

perbedaan utamanya adalah setelah tahap *Constructor* dan *Build*, stateless widget mempertahankan tampilan yang sama. Sementara pada stateful widget, tampilan dapat berubah sesuai pembaruan state yang memungkinkan respons terhadap perubahan atau interaksi baru.

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
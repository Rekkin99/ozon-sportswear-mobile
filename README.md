# Tugas PBP : Mobile Development

Ozon Sportwears | Farrell Bagoes Rahmantyo | 2406420596

## Tugas 7
### Jelaskan apa itu widget tree pada Flutter dan bagaimana hubungan parent-child (induk-anak) bekerja antar widget.
Sederhanya Widget Tree itu merupakan struktur widget-widget aplikasi kita, mirip dengan tree. Biasanya ada root treenya (umumnya MaterialApp)
Lalu masing-masing node dapat memiliki child/children. Dapat dibilang Parent Membungkus Child-nya. Dalam kata lain, Jika parent container,
child pasti akan berada di dalam kontainer parent tersebut.

### Sebutkan semua widget yang kamu gunakan dalam proyek ini dan jelaskan fungsinya.
- Material App : Sebagai Root Widget, Mengatur Material Design Element, Konfigurasi Aplikasi.
- Scaffold : Struktur Layout Halaman Yang Terdiri atas AppBar dan Body
- AppBar : Semacam NavBar Aplikasi
- Padding : Mengatur Jarak Konten dengan Border
- Collumn : Kontainer Layout Child dalam Kolom
- Row : Kontainer Layout Child dalam Baris
- Center : Kontainer Layout agar Child Berada di Posisi Center Layout
- Container : Kontainer Widget pada Umumnya
- Text : Menampilkan Text
Dan Sebagainya.

### Apa fungsi dari widget MaterialApp? Jelaskan mengapa widget ini sering digunakan sebagai widget root.
Secara sederhana, Widget MaterialApp menyediakan material desain elemen dan juga konfigurasi aplikasi seperti
tema, navigasi dan routing. Hal inilah alasan mengapa MaterialApp biasanya menjadi Widget Root Aplikasi Flutter

### Jelaskan perbedaan antara StatelessWidget dan StatefulWidget. Kapan kamu memilih salah satunya?
StatelessWidget itu layoutnya fixed atau tidak dapat diubah tampilannya. Sementara StatefulWidget, 
layoutnya dapat diupdate dengan tampilan yang baru sesuai kode yang dibuat. Stateless dapat dipakai ketika
page atau laman yang dimuat tidak didesain untuk ada perubahan tampilan. Sementara itu, Stateful kebalikannya

### Apa itu BuildContext dan mengapa penting di Flutter? Bagaimana penggunaannya di metode build?
BuildContext merepresentasikan suatu posisi/lokasi di Widget Tree.
BuildContext penting karena
- Dapat mengakses inherited widgets seperti Theme, MediaQuery, Provider
- Trigger Navigation
- Memperlihatkan UI overlay seperti Snackbar
Di Tugas ini kita menggunakan sebagai di methode Widget build. Seperti Mengakses Tema dari MaterialApp

### Jelaskan konsep "hot reload" di Flutter dan bagaimana bedanya dengan "hot restart".
Hot Reload Bekerja dengan Mengimplementasikan perubahan source code ke Dart VM, membuat ulang struktur Widgets Tree
dan mempertahankan state aplikasi. Berbeda dengan Hot Restart yang mengimplementasikan perubahan dalam source code
dengan merestart ulang aplikasi flutter sehingga tidak mempertahankan state aplikasi.

## Tugas 8

### Jelaskan perbedaan antara Navigator.push() dan Navigator.pushReplacement() pada Flutter. Dalam kasus apa sebaiknya masing-masing digunakan pada aplikasi Football Shop kamu?
Navigator akan menampilkan page yang berada di atas stack routenya. Navigator.push() hanya mempush suatu page ke top stacknya. 
Sementara itu, Navigator.pushReplacement() akan mem-pop top stacknya dan mempush route yang baru sehingga kita tidak dapat back ke laman sebelumnya. 
Kasus push replacement dipakai ketika kita tidak ingin user dapat memback ke laman sebelumnya

### Bagaimana kamu memanfaatkan hierarchy widget seperti Scaffold, AppBar, dan Drawer untuk membangun struktur halaman yang konsisten di seluruh aplikasi?
Saya menggunakan container untuk struktur pagenya yang berisi decoration yang mengatur background color dan Scaffold untuk struktur page aplikasinya. 
Scaffold berisi AppBar, endDrawer, dan body. AppBar merupakan bar yang selalu ada di atas page, saya pakai untuk menandakan untuk page apa. EndDrawer sama 
seperti drawer yakni untuk navigasi dari sidebar. Hanya endDrawer memunculkan barnya dari kanan. Sementara body itu isi laman page yang dikunjungi

### Dalam konteks desain antarmuka, apa kelebihan menggunakan layout widget seperti Padding, SingleChildScrollView, dan ListView saat menampilkan elemen-elemen form? Berikan contoh penggunaannya dari aplikasi kamu.

### Bagaimana kamu menyesuaikan warna tema agar aplikasi Football Shop memiliki identitas visual yang konsisten dengan brand toko?
Dalam main.dart Root Widget Aplikasi merupakan MaterialApp. Dengan MaterialApp kita dapat menentukan skema tema aplikasi kita. Setiap
build Widget kita menggunakan BuildContext yang menunjuk ke arah MaterialApp sehingga kita dapat mengambil tema dari MaterialApp kita 
menggunakan Theme.of(context)
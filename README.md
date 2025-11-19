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
Memastikan tampilan dapat terlihat di screen HP. Contohnya ada di Form Page product. Saya menggunakan padding agar kolom isian tetap berada dalam tampilan. 
SingleChildScrollView berguna agar konten childnya tidak overflow jadi bisa discroll. ListView saya pakai di sidebar drawer agar bisa lebih terstruktur rapi.

### Bagaimana kamu menyesuaikan warna tema agar aplikasi Football Shop memiliki identitas visual yang konsisten dengan brand toko?
Dalam main.dart Root Widget Aplikasi merupakan MaterialApp. Dengan MaterialApp kita dapat menentukan skema tema aplikasi kita. Setiap
build Widget kita menggunakan BuildContext yang menunjuk ke arah MaterialApp sehingga kita dapat mengambil tema dari MaterialApp kita 
menggunakan Theme.of(context)

## Tugas 9

### Jelaskan mengapa kita perlu membuat model Dart saat mengambil/mengirim data JSON? Apa konsekuensinya jika langsung memetakan Map<String, dynamic> tanpa model (terkait validasi tipe, null-safety, maintainability)?
Dengan Model, kita dapat memvalidasi apakah field tertentu memiliki tipe data yana benar, kita juga dapat membuat apakah suatu field itu wajib atau diperbolehkan kosong saat diisi 
dan secara pribadi, dengan model penerapan kode saya lebih rapi dan mudah terbaca.

### Apa fungsi package http dan CookieRequest dalam tugas ini? Jelaskan perbedaan peran http vs CookieRequest.
Http : package untuk dapat melakukan request seperti POST/GET ke server
CookieRequest : Menyimpan sebuah state yang digunakan untuk fitur-fitur aplikasi. Hal yang disimpan seperti sesi akun siapa yang login

### Jelaskan mengapa instance CookieRequest perlu untuk dibagikan ke semua komponen di aplikasi Flutter.
Setiap Page/Screen dapat mengakses data yang sama dari suatu session

### Jelaskan konfigurasi konektivitas yang diperlukan agar Flutter dapat berkomunikasi dengan Django. Mengapa kita perlu menambahkan 10.0.2.2 pada ALLOWED_HOSTS, mengaktifkan CORS dan pengaturan SameSite/cookie, dan menambahkan izin akses internet di Android? Apa yang akan terjadi jika konfigurasi tersebut tidak dilakukan dengan benar?
10.0.2.2 Allowed Access Agar emulator android dapat mengakses web django
CORS : Berfungsi agar aplikasi dari domain yang berbeda dapat mengakses API Django
Samesite & Cookie Settings : Agar cookie session dapat dikirim lintas domain
AndroidManifest Izin Internet : Agar Aplikasi Android dapat mengakses Internet

### Jelaskan mekanisme pengiriman data mulai dari input hingga dapat ditampilkan pada Flutter.
Biasanya User akan mengisi form di applikasi flutter dan di flutter akan memvalidasi input sebelum dikirim, lalu data akan dikirimkan ke API Django 
dan akan diproses sesuai back-end django lalu Django akan memberikan response. Berdasarkan response kita tampilkan front-endnya dari flutter

### Jelaskan mekanisme autentikasi dari login, register, hingga logout. Mulai dari input data akun pada Flutter ke Django hingga selesainya proses autentikasi oleh Django dan tampilnya menu pada Flutter.
Login, Register akan mengirim isi data yang kita ketik dalam sebuah list sebagai contextnya ke API dari web Django Kita. Backend API Django akan memproses Register/Login tersebut dan mengembalikkan sebuah response. 
Dari response yang diberikan di flutter kita akan menentukan akan apa.

### Jelaskan bagaimana cara kamu mengimplementasikan checklist di atas secara step-by-step! (bukan hanya sekadar mengikuti tutorial).
Honestly Mate, Gw Copas dari Repo Tutorial dan Modifikasi Sesuai Proyek App ini ¯\_(ツ)_/¯

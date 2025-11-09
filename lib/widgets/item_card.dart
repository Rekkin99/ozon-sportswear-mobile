import 'package:flutter/material.dart';
import 'package:ozon_sportwears/screens/product_form.dart';

// Item Home Page
class ItemHomePage {
  final String name;
  final IconData icon;
  final Color color;
  ItemHomePage(this.name, this.icon, this.color);
}

// Item Card
class ItemCard extends StatelessWidget{
  // Menampilkan Kartu dengan nama dan Icon

  final ItemHomePage item;
  const ItemCard(this.item, {super.key});

  @override
  Widget build(BuildContext context){
    return Material(
      // Warna Latar Belakang dari Tema Applikasi
      color: item.color,
      // Membuat Sudut Kartu Rounder
      borderRadius: BorderRadius.circular(12),

      child: InkWell(
        // Aksi Ketika Kartu dipencet
        onTap:(){
          // Tampilkan Pesan SnackBar
          ScaffoldMessenger.of(context)
            ..hideCurrentSnackBar()
            ..showSnackBar(
                SnackBar(content: Text("Kamu telah menekan tombol ${item.name}!"),)
            );

          if (item.name == "Create Product") {
            Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => ProductFormPage(),
                ));
          } else if (item.name == "All Products"){

          } else if (item.name == "My Products"){

          }
        },

        // Container untuk menyimpan Text dan Icon
        child: Container(
          padding: const EdgeInsets.all(8),
          child:Center(
            child: Column(
              // Menyusun Ikon dan Teks di Tengah Kartu
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
                  style: const TextStyle(color : Colors.white),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
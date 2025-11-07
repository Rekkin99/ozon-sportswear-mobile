import 'package:flutter/material.dart';
import 'package:ozon_sportwears/widgets/right_drawer.dart';
import 'package:ozon_sportwears/widgets/item_card.dart';

class MyHomePage extends StatelessWidget {
  MyHomePage({super.key});

  final String nama = "Farrell Bagoes Rahmantyo";
  final String npm = "2406420596";
  final String kelas = "E";

  final List<ItemHomePage> items = [
    ItemHomePage("All Products", Icons.storefront, Colors.blueAccent),
    ItemHomePage("My Products", Icons.inventory_2, Colors.greenAccent),
    ItemHomePage("Create Product", Icons.add, Colors.redAccent),
  ];

  @override
  Widget build(BuildContext context) {
    // Scaffold menyediakan struktur dasar halaman dengan AppBar dan body.
    return Container(
      // Background Color
      decoration: BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              stops: [0.7, 0.9],
              colors: [Colors.white, Theme.of(context).colorScheme.secondary])),

      child:Scaffold(
        // Biar Background Muncul
        backgroundColor: Colors.transparent,
      // AppBar
        appBar: AppBar(
          title: const Text('Ozon Sportswear', style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold), ),
          // Warna latar navbar diambil dari color scheme primary aplikasi
          backgroundColor: Theme.of(context).colorScheme.primary,
          iconTheme: Theme.of(context).iconTheme,
        ),
        endDrawer: RightDrawer(),
        // Body halaman dengan padding
        body: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    InfoCard(title: 'NPM', content: npm),
                    InfoCard(title: 'Name', content: nama),
                    InfoCard(title: 'Class', content: kelas),
                  ],
                ),
                // Memberikan jarak vertikal 4 unit.
                const SizedBox(height: 4.0),

                // di tengah halaman
                Center(
                    child: Column(
                      // Menyusun secara vertikal
                      children: [
                        const Padding(
                          padding: EdgeInsets.only(top: 8.0),
                          child: Text(
                            "Ozon Sportwear | World's Greatest Sport Gears",
                            style: TextStyle(fontWeight: FontWeight.bold,
                              fontSize: 18.0,),
                          ),
                        ),
                        // GRid buat nampilin ItemCard dalam bentuk grid 3 kolom.
                        GridView.count(
                          primary: true,
                          padding: const EdgeInsets.all(20),
                          crossAxisSpacing: 10,
                          mainAxisSpacing: 10,
                          crossAxisCount: 3,
                          // shrinkWrap biar grid nyesuain tinggi konten
                          shrinkWrap: true,
                          children: items.map((ItemHomePage item) {
                            return ItemCard(item);
                          }).toList(),
                        ),
                      ],
                    )
                ),
              ],
            )
        )
    ),
    );
  }
}

// Info Card
class InfoCard extends StatelessWidget {
  final String title;
  final String content;

  const InfoCard({super.key, required this.title, required this.content});

  @override
  Widget build(BuildContext context) {
    return Card(
        color: Theme.of(context).colorScheme.primary,
        elevation: 2.0,
        child: Container(
            width: MediaQuery.of(context).size.width / 3.5,
            padding: const EdgeInsets.all(16.0),
            child: Column(
              children: [
                Text(
                  title,
                  style: const TextStyle(fontWeight: FontWeight.bold, color: Colors.white),
                ),
                const SizedBox(height: 8.0),
                Text(
                    content,
                  style: const TextStyle(color: Colors.white),
                ),
              ],
            )
        )
    );
  }
}



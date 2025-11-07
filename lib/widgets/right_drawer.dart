import 'package:flutter/material.dart';
import 'package:ozon_sportwears/screens/menu.dart';
import 'package:ozon_sportwears/screens/product_form.dart';

class RightDrawer extends StatelessWidget {
  const RightDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Theme.of(context).colorScheme.secondary,
      child: ListView(
        children: [
          SizedBox(
            height: 120,
            child:DrawerHeader(
              decoration: BoxDecoration(
                color: Theme.of(context).colorScheme.primary,
              ),
              child: Column(
                children: [
                  Text(
                    'Ozon Sportswear',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                  Padding(padding: EdgeInsets.all(2)),
                  Text("World Number One Sport Brand",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.normal,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
            ),
          ),
          ListTile(
            leading: const Icon(Icons.home_outlined),
            title: const Text('Home'),
            textColor: Colors.white,
            iconColor: Colors.white,
            // Bagian redirection ke MyHomePage
            onTap: () {
              Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                    builder: (context) => MyHomePage(),
                  ));
            },
          ),
          ListTile(
            leading: const Icon(Icons.storefront_outlined),
            title: const Text('All Products'),
            textColor: Colors.white,
            iconColor: Colors.white,
            // Bagian redirection ke NewsFormPage
            onTap: () {
              // TODO
            },
          ),
          ListTile(
            leading: const Icon(Icons.inventory_2_outlined),
            title: const Text('My Products'),
            textColor: Colors.white,
            iconColor: Colors.white,
            // Bagian redirection ke NewsFormPage
            onTap: () {
              // TODO
            },
          ),
          ListTile(
            leading: const Icon(Icons.add_circle_outline),
            title: const Text('Add Products'),
            textColor: Colors.white,
            iconColor: Colors.white,
            // Bagian redirection ke NewsFormPage
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => ProductFormPage(),
              ));
            },
          ),
        ],
      ),
    );
  }
}
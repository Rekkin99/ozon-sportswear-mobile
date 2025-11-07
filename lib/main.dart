import 'package:flutter/material.dart';
import 'package:ozon_sportwears/screens/menu.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        iconTheme: IconThemeData(
            color: Colors.white,),
        colorScheme: ColorScheme.fromSwatch(primarySwatch: Colors.orange)
            .copyWith(
            primary: Colors.orange[500],
            secondary: Colors.orangeAccent[100],
            ),
      ),
      home: MyHomePage(),
    );
  }
}


import 'package:flutter/material.dart';
import 'package:ozon_sportwears/screens/login.dart';
import 'package:ozon_sportwears/screens/menu.dart';
import 'package:pbp_django_auth/pbp_django_auth.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Provider(
      create: (_) {
        CookieRequest request = CookieRequest();
        return request;
      },
      child: MaterialApp(
        title: 'Ozon Sportswear',
        theme: ThemeData(
          iconTheme: IconThemeData(
            color: Colors.white,),
          colorScheme: ColorScheme.fromSwatch(primarySwatch: Colors.orange)
              .copyWith(
            primary: Colors.orange[500],
            secondary: Colors.orangeAccent[100],
          ),
        ),
        home: LoginPage(),
      ),
    );

  }
}


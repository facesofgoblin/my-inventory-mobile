import 'package:flutter/material.dart';
import 'package:my_inventory/screens/login.dart';
// import 'package:my_inventory/screens/menu.dart';
import 'package:pbp_django_auth/pbp_django_auth.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

//Integrasi Sistem Autentikasi pada Flutter
//mengubah widget root untuk menyediakan CookieRequest library ke semua child widgets dengan menggunakan Provider.
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Provider(
      create: (_) {
        CookieRequest request = CookieRequest();
        return request;
      },
      child: MaterialApp(
          title: 'My Inventory App',
          theme: ThemeData(
            colorScheme: ColorScheme.fromSeed(seedColor: Colors.indigo),
            useMaterial3: true,
          ),
          home: LoginPage(),
          ) //mengubah dari MyHomePage ke LoginPage
    );
  }
}

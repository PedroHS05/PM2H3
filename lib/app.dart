import 'package:flutter/material.dart';
import 'package:retomada/about_page.dart';
import 'package:retomada/home_page.dart';

class Aplicacao extends StatelessWidget {
  const Aplicacao({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Retomada",
      theme: ThemeData(
        primarySwatch: Colors.red,
         ),
         initialRoute: "/",
         routes: {
          "/":(context) => const HomePage(),
          "/about":(context) => const AboutPage(),
         },
    );
  }
}
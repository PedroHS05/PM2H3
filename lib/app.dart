import 'package:flutter/material.dart';
import 'package:linguagem/home_page.dart';
import 'package:linguagem/view_model.dart';
import 'package:provider/provider.dart';

class Aplicacao extends StatelessWidget {
  const Aplicacao({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider<LanguageViewModel>(create: (_) => LanguageViewModel()),
      ],
      child: MaterialApp(
        title: "Linguagens",
        theme: ThemeData(
          primarySwatch: Colors.red,
        ),
        home: const HomePage(),
      ),
    );
  }
}
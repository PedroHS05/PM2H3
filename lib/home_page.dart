import 'package:english_words/english_words.dart';
import 'package:flutter/material.dart';
import 'package:retomada/drawer.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  String palavra = "";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        child: DrawerNavigator(),
      ),
      appBar: AppBar(
        title: const Text("Home"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(12),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              const Text("Palavra Aleatória"),
              Text(palavra),
              SizedBox(
                width: double.maxFinite,
                  child: ElevatedButton(
                onPressed: () {
                  setState(() {//toda vez que fizermos uma alteração usando set state ele fara a "orde" e atualizara a tela
                    palavra = generateWordPairs().first.asPascalCase;//pascalcase tipo cameo case só que a primeira é maiuscula
                  });
                },
                child: const Text("Gerar"),
              )),
            ],
          ),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    
    return Scaffold(
      appBar: AppBar(
        title: const Text("Cardapio"),
      ),
      body: Center(
        child: Column(
          children: [
            Container(
              margin: const EdgeInsets.all(12),
              child: Text(
                "comida",
                style: theme.textTheme.headline4
              ),
            ),
            Padding(
              padding: EdgeInsets.only(right: 10, left: 10),
              child: Image.asset("assets/comida.jpg", width: 600, height: 400),
            ),
            Text(
              "Ingredientes",
              style: theme.textTheme.headline5,
            ),
            const Text("Arroz"),
            const Text("Feijão"),
            const Text("Batata Frita"),
            const Text("Bife"),
          ],
        ),
      )
    );
  }
}

class Aplicacao extends StatelessWidget {
  const Aplicacao({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Cardapio",
      theme: ThemeData(
        primarySwatch: Colors.cyan,
      ),
      home: const HomePage(),
    );
  }
}

void main() => runApp(const Aplicacao());
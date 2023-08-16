import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Home"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [            
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: const[
                Text("Avaliativa"),
                Text("Avaliativa"),
              ],
            ),

            Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: const[
                Text("Pedro Scabelo"),
                Text("Pedro Scabelo"),
              ]
            ),

            Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: const[
                Text("2h3"),
              ]
            ),

            Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: const[
                Text("2023"),
              ]
            ),
          ],
        ),
      ),
    );
  }
}

class Aplicacao extends StatelessWidget {
  const Aplicacao({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "App Hello World",
      theme: ThemeData(
        primarySwatch: Colors.blueGrey,
      ),
      home: const HomePage(),
    );
  }
}

void main() => runApp(const Aplicacao());
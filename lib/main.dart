import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final textController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Home"),
      ),
      body: Container(
        margin:  const EdgeInsets.all(10),
        child: Column(
          children: [
            TextField(
              controller: textController,
              decoration: const InputDecoration(
                labelText: "Informe seu nome:",
              ),
            ),
            SizedBox(
              width: double.maxFinite,
              child: Padding(
                padding: const EdgeInsets.only(top: 12),
                child: ElevatedButton(
                  onPressed: greet,
                  child: const Text("Cumprimente"),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  void greet() {
    
    final message = textController.text.isEmpty ?
      "Informe seu nome antes!" : "Boa Noite, ${textController.text}!";

    final snackBar = SnackBar(
      content: Text(message)
    );

    ScaffoldMessenger.of(context).showSnackBar(snackBar);
  }
}

class Aplicacao extends StatelessWidget {
  const Aplicacao({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Greeting",
      theme: ThemeData(
        primarySwatch: Colors.purple,
      ),
      home: const HomePage(),
    );
  }
}

void main() => runApp(const Aplicacao());
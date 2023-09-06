import 'package:diacritic/diacritic.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  final nomeController = TextEditingController();
  final periodoController = TextEditingController();

  HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Home"),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(8),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              TextField(
                controller: nomeController,
                decoration: const InputDecoration(
                  labelText: "Nome: ",
                  border: OutlineInputBorder(),
                ),
              ),

              TextField(
                controller: periodoController,
                decoration: const InputDecoration(
                  labelText: "Periodo: ",
                  border: OutlineInputBorder(),
                ),
              ),

              ElevatedButton(
                  onPressed: () => comprimentar(context),
                  child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: const [
                        Text(
                          "Cumprimentar",
                          style: TextStyle(
                            fontSize: 20,
                          ),
                        ),
                      ]))
            ],
          ),
        ),
      ),
    );
  }

  void comprimentar(BuildContext context) {
    final periodo = removeDiacritics((periodoController.text.toLowerCase()));
    final nome = nomeController.text;

    if(periodo == "manha"){
      final snackBar = SnackBar(
        content: Text("Bom Dia, $nome!"),
      );
      ScaffoldMessenger.of(context).showSnackBar(snackBar);
    }else if(periodo == "tarde"){
      final snackBar = SnackBar(
        content: Text("Boa Tarde, $nome!"),
      );
      ScaffoldMessenger.of(context).showSnackBar(snackBar);
    }else if(periodo == "noite"){
      final snackBar = SnackBar(
        content: Text("Boa Noite, $nome!"),
      );
      ScaffoldMessenger.of(context).showSnackBar(snackBar);
    }

  }
}

class Aplicacao extends StatelessWidget {
  const Aplicacao({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Soma",
      theme: ThemeData(
        primarySwatch: Colors.blueGrey,
      ),
      home: HomePage(),
    );
  }
}

void main() => runApp(const Aplicacao());
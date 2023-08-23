import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  final num1Controller = TextEditingController();
  final num2Controller = TextEditingController();

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
                controller: num1Controller,
                decoration: const InputDecoration(
                  labelText: "Primeiro Número: ",
                  border: OutlineInputBorder(),
                ),
              ),
              const Text(
                "+",
                style: TextStyle(
                  fontSize: 30,
                ),
              ),
              TextField(
                controller: num2Controller,
                decoration: const InputDecoration(
                  labelText: "Segundo Número: ",
                  border: OutlineInputBorder(),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  ElevatedButton(
                      onPressed: () => soma(context),
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: const [
                            Text(
                              "+",
                              style: TextStyle(
                                fontSize: 20,
                              ),
                            ),
                          ])),
                  ElevatedButton(
                      onPressed: () => menos(context),
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: const [
                            Text(
                              "-",
                              style: TextStyle(
                                fontSize: 20,
                              ),
                            ),
                          ])),
                  ElevatedButton(
                      onPressed: () => multiplicar(context),
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: const [
                            Text(
                              "*",
                              style: TextStyle(
                                fontSize: 20,
                              ),
                            ),
                          ])),
                  ElevatedButton(
                      onPressed: () => divisao(context),
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: const [
                            Text(
                              "/",
                              style: TextStyle(
                                fontSize: 20,
                              ),
                            ),
                          ])),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  void soma(BuildContext context) {
    final num1 = double.parse(num1Controller.text);
    final num2 = double.parse(num2Controller.text);

    final snackBar = SnackBar(
      content: Text("$num1 + $num2 = ${num1 + num2}"),
    );

    ScaffoldMessenger.of(context).showSnackBar(snackBar);
  }

  void menos(BuildContext context) {
    final num1 = double.parse(num1Controller.text);
    final num2 = double.parse(num2Controller.text);

    final snackBar = SnackBar(
      content: Text("$num1 - $num2 = ${num1 - num2}"),
    );

    ScaffoldMessenger.of(context).showSnackBar(snackBar);
  }

  void multiplicar(BuildContext context) {
    final num1 = double.parse(num1Controller.text);
    final num2 = double.parse(num2Controller.text);

    final snackBar = SnackBar(
      content: Text("$num1 X $num2 = ${num1 * num2}"),
    );

    ScaffoldMessenger.of(context).showSnackBar(snackBar);
  }

  void divisao(BuildContext context) {
    final num1 = double.parse(num1Controller.text);
    final num2 = double.parse(num2Controller.text);

    if(num2 > 0){
    final snackBar = SnackBar(
      content: Text("$num1 / $num2 = ${num1 / num2}"),
    );
    ScaffoldMessenger.of(context).showSnackBar(snackBar);
    }else{
      final snackBar = SnackBar(
      content: Text("O pimeiro Valor não pode ser dividido por zero")
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

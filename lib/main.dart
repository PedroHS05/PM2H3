import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:intl/intl.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final produtoController = TextEditingController();
  final precoController = TextEditingController();
  final quantidadeController = TextEditingController();

  final fomatter = NumberFormat.currency(
    locale: "pt-BR",
    symbol: "r\$",
  );

  late var total = 0.0;

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
              newTextField(produtoController, "Produto", TextInputType.text),
              newTextField(precoController, "Produto", TextInputType.number),
              newTextField(quantidadeController, "Produto", TextInputType.number),
              
              ElevatedButton(
                  onPressed: calcular,
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: const [
                        Text(
                          "Somar",
                          style: TextStyle(
                            fontSize: 20,
                          ),
                        ),
                      ])),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                 const Text("Total: "),
                 Text(fomatter.format(total)
                 )
                 ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget newTextField(TextEditingController controller, String text, TextInputType inputType){
    return TextField(
      controller: controller,
      decoration: InputDecoration(
        labelText: text,
      ),
    );
  }

  void calcular() {
    final preco = double.parse(precoController.text);
    final quantidade = double.parse(quantidadeController.text);

    setState(() {
      total = quantidade * preco;
    });
  }
}

class Aplicacao extends StatelessWidget {
  const Aplicacao({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Pedido",
      theme: ThemeData(
        primarySwatch: Colors.cyan,
      ),
      home: const HomePage(),
    );
  }
}

void main() => runApp(const Aplicacao());

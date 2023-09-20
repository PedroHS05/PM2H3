// ignore_for_file: unnecessary_brace_in_string_interps

import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {

  HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final produtoController = TextEditingController();
  final quantidadeController = TextEditingController();
  final precoController = TextEditingController();

  final pagamentos = ["À prazo","À vista"];
  late String pagamento;

  @override
  void initState() {
    super.initState();

    pagamento = pagamentos.first;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Home"),
        ),
        body: Center(
          child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                TextField(
                  controller: produtoController,
                  decoration: const InputDecoration(
                    labelText: "Produto ",
                    border: OutlineInputBorder(),
                  ),
                ),
                TextField(
                  controller: quantidadeController,
                  decoration: const InputDecoration(
                    labelText: "Quantidade ",
                    border: OutlineInputBorder(),
                  ),
                ),
                TextField(
                  controller: precoController,
                  decoration: const InputDecoration(
                    labelText: "Preço ",
                    border: OutlineInputBorder(),
                  ),
                ),
                SizedBox(
                  width: double.maxFinite,
                  child: DropdownButton(
                    value: pagamento,
                    items: pagamentos.map(toDMI).toList(), 
                    onChanged: (value) => setState(() {
                      pagamento = value!;
                    }),
                  ),
                ),
                ElevatedButton(
                    onPressed: () => precoTotal(context),
                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: const [
                          Text(
                            "Calcular",
                            style: TextStyle(
                              fontSize: 20,
                            ),
                          ),
                        ])),
              ]),
        ));
  }

  DropdownMenuItem<String> toDMI(String item) {
    return DropdownMenuItem<String>(
      value: item,
      child: Text(item),
    );
  }

  void precoTotal(BuildContext context){
    var produto = produtoController.text;
    var quantidade = double.parse(quantidadeController.text);
    var preco = double.parse(precoController.text);
    var pagamento = pagamentos.toString();

    if(pagamento == "À vista"){
      final snackBar = SnackBar(
        content: Text("${quantidade} ${produto} custará ${quantidade * preco * 5 / 100}"),
      );
      
      ScaffoldMessenger.of(context).showSnackBar(snackBar);
    }
  }
}

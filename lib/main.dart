import 'package:diacritic/diacritic.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {

  HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final nomeController = TextEditingController();
  final periodoController = TextEditingController();

  final periodos = ["Manhã","Tarde","Noite"];
  late String periodo;
  //O tipo final quer dizer que a variavel só recebe valor uma vez 

  @override
  void initState() {
    super.initState();

    periodo = periodos.first;
  }
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

              SizedBox(
                width: double.maxFinite,
                child: DropdownButton<String>(
                  value: periodo,
                  items: periodos.map(toDMI).toList(),
                  onChanged: (value) {
                    setState(() {
                     periodo = value ?? periodos.first; 
                    });
                  },
                ),
              ),

              ElevatedButton(
                  onPressed: () => cumprimentar(context),
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

  DropdownMenuItem<String> toDMI(String item) {
    return DropdownMenuItem<String>(
      value: item,
      child: Text(item),
    );
  }

  void cumprimentar(BuildContext context) {
    final periodo = removeDiacritics((this.periodo.toLowerCase()));
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
      title: "Comprimentar",
      theme: ThemeData(
        primarySwatch: Colors.blueGrey,
      ),
      home: HomePage(),
    );
  }
}

void main() => runApp(const Aplicacao());
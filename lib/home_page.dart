import 'package:flutter/material.dart';
import 'package:plural/plural_al_el_ol_ul.dart';
import 'package:plural/plural_m.dart';
import 'package:plural/plural_r_z.dart';
import 'package:plural/plural_simples.dart';

class HomePage extends StatelessWidget {
  final controller = TextEditingController();

  final regras = {
    PluralM(),
    PluralRZ(),
    PluralSimples(),
    PluralL()
  };

  HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Text"),
      ),
      body: Padding(
          padding: const EdgeInsets.all(8),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              TextField(
                controller: controller,
                decoration: const InputDecoration(
                  labelText: "Palavra: ",
                  border: OutlineInputBorder(),
                ),
              ),
              ElevatedButton(
                  onPressed: () => plural(context),
                  child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: const [
                        Text(
                          "Plural!",
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

  void plural(BuildContext context){
    final singular = controller.text;
    var resultado = "";
    for (var regra in regras){
      if (regra.aceita(singular)){
        resultado = regra.doPlural(singular);
        break;
      }
    }

    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(content: Text("$singular => $resultado")),
    );
  }
}

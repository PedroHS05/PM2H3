import 'package:flutter/material.dart';
import 'package:linguagem/view_model.dart';
import 'package:provider/provider.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final vm = Provider.of<LanguageViewModel>(context);

    return Scaffold(
      appBar: AppBar(
        title: const Text("Home"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Container(
              width: double.maxFinite,
              padding: const EdgeInsets.only(bottom: 12),
              child: ElevatedButton(
                onPressed: () => vm.addMoreLanguages(),
                child: const Text("Add More Languages"),
              ),
            ),
            Expanded(
              child: ListView.builder(
                itemCount: vm.languages.length,
                itemBuilder: (context, index) => Container(
                  padding: const EdgeInsets.all(8),
                  alignment: Alignment.centerLeft,
                  child: Text(vm.languages[index]),
                ),
              )
            ),
          ],
        ),
      ),
    );
  }
}

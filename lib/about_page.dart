import 'package:flutter/material.dart';
import 'package:retomada/drawer.dart';

class AboutPage extends StatelessWidget {
  const AboutPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const Drawer(
        child: DrawerNavigator(),
      ),
      appBar: AppBar(
        title: const Text("Sobre"),
      ),
      body: const Center(
        child: Text("Pedro H. Scabelo"),
      ),
    );
  }
}
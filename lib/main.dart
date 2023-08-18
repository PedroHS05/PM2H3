import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Scaffold(
      appBar: AppBar(
        title: const Text("Home"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              children: [
                Text(
                  "Atividade",
                  style: theme.textTheme.headline4?.copyWith(
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const Text("Avaliativa"),
              ],
            ),
            Container(
              width: double.maxFinite,
              decoration: const BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topRight,
                  end: Alignment.bottomLeft,
                  colors:[
                    Colors.blue,
                    Colors.green,
                  ],
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  children: const [
                    Text("Pedro Scabelo"),
                    Text("Pedro Scabelo"),
                  ],
                ),
              ),
            ),
            Container(
              width: double.maxFinite,
              color: Colors.blue,
              child: Align(
                alignment: Alignment.center,
                child: Padding(
                  padding: EdgeInsets.all(8),
                  child: Text(
                    "2H3",
                    style: theme.textTheme.bodyText1?.copyWith(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      shadows: const[
                        Shadow(
                          color: Color.fromARGB(255, 0, 0, 0),
                          blurRadius: 2,
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: const [
                Text("Agosto"),
                Text("2023"),
              ],
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
        primarySwatch: Colors.lightGreen,
      ),
      home: const HomePage(),
    );
  }
}

void main() => runApp(const Aplicacao());

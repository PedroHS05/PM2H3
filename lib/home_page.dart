import 'package:flutter/material.dart';
import 'package:lista/language.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final languages = [
    Language(name: "C", like: false),
    Language(name: "C", like: false),
    Language(name: "C#", like: false),
    Language(name: "C++", like: false),
    Language(name: "Java", like: false),
    Language(name: "Python", like: false),
    Language(name: "JavaScript", like: false),
    Language(name: "HTML", like: false),
    Language(name: "SQL", like: false),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Home"),
      ),
      body: ListView.separated(
        //ListView - cria uma barra rolagem se caso o texto passar do tomanho da tel diferente do column que não criaria esta barra
        itemCount: languages.length,
        itemBuilder: (context, index) => createItem(languages[index], index),
        separatorBuilder: (context, index) => const Divider(),
      ),
    );
  }

  Widget createItem(Language language, int index) {
    return Container(
      margin: const EdgeInsets.all(10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(language.name),
          MouseRegion(
            cursor: SystemMouseCursors.click,
            child: GestureDetector(
              onTap: () => doLike(index, language),
              child: Icon(
                language.like ? Icons.favorite : Icons.favorite_border,
                color: Colors.red,
              ),
            ),
          ),
        ],
      ),
    );
  }

  void doLike(int index, Language language) {
    setState(() {
      languages[index] = Language(
        name: language.name,
        like: !language.like,
      );
    });
  }
}

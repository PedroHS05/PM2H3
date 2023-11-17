import 'package:flutter/material.dart';
import 'package:login/home_page.dart';
import 'package:login/new_todo_page.dart';
import 'package:login/todo_view_model.dart';
import 'package:provider/provider.dart';

class Aplicacao extends StatelessWidget {
  const Aplicacao({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => TodoViewModel()),
      ],
      child: MaterialApp(
        title: "Todo List",
        theme: ThemeData(
          primarySwatch: Colors.orange,
        ),
        initialRoute: "/",
        routes: {
          "/": (context) => const HomePage(),
          "/new-todo": (context) => const NewTodoPage(),
        },
      ),
    );
  }
}
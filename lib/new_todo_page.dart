import 'package:flutter/material.dart';
import 'package:login/todo_view_model.dart';
import 'package:provider/provider.dart';

class NewTodoPage extends StatefulWidget {
  const NewTodoPage({super.key});

  @override
  State<NewTodoPage> createState() => _NewTodoPageState();
}

class _NewTodoPageState extends State<NewTodoPage> {
  final nameController = TextEditingController();
  final dueDateController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final vm = Provider.of<TodoViewModel>(context);

    return Scaffold(
      appBar: AppBar(
        title: const Text("New ToDo"),
      ),
      body: Container(
        padding: const EdgeInsets.all(8),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            newTextField("Nome da Tarefa", nameController),
            newTextField("Data de Vencimento", dueDateController),
            SizedBox(
              width: double.maxFinite,
              child: ElevatedButton(
                onPressed: (){
                  vm.addNewTodo(nameController.text, DateTime.parse(dueDateController.text),
                  );

                  Navigator.pop(context);
                },
                child: const Text("Salvar"),
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget newTextField(String label,TextEditingController controller) => TextField(
    controller: controller,
    decoration: InputDecoration(
      labelText: label,
    ),
  );
}
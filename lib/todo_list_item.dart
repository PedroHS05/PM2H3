import 'package:flutter/material.dart';
import 'package:login/todo.dart';

class TodosListItem extends StatelessWidget {
  final Todo todo;

  const TodosListItem({
    super.key,
    required this.todo,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(8),
      child: Row(
        children: [
          Expanded(
            child: Text(todo.name),
          ),
          Text(todo.status),
        ],
      ),
    );
  }
}

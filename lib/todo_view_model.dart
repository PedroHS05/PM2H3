import 'package:flutter/foundation.dart';
import 'package:login/todo.dart';

class TodoViewModel extends ChangeNotifier{

  final todos = <Todo>[];

  addNewTodo(String name, DateTime dueDate){
    todos.add(Todo(
      name: name,
      dueDate: dueDate,
    ));

    notifyListeners();
  }

  void moveTodo(int index){
    todos[index] = todos[index].moveToNext();
    
    notifyListeners();
  }


}
class Todo {
  final String name;
  final DateTime dueDate;
  final String status;

  Todo({
    required this.name,
    required this.dueDate,
    this.status = "TO-DO",
  });

  Todo moveToNext() {
    String newStatus;
    
    switch (status) {
      case "TO-DO":
        newStatus = "DOING";
        break;
      case "DOING":
        newStatus = "DONE";
        break;
      default:
        newStatus = status;
    }

    return Todo(
      name: name,
      dueDate: dueDate,
      status: newStatus,
    );
  }
}
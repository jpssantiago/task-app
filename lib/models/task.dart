class Task {
  String title;
  DateTime initialDate;
  DateTime finalDate;
  TaskStatus status;

  Task({
    this.title,
    this.initialDate,
    this.finalDate,
    this.status,
  });
}

enum TaskStatus {
  active,
  delayed,
  completed,
}

class Task {
  String title;
  DateTime createdDate;
  TaskStatus status;

  Task({
    this.title,
    this.createdDate,
    this.status,
  });

  static Task createTask({String title, DateTime date}) {
    return Task(
      title: title,
      status: TaskStatus.active,
      createdDate: date,
    );
  }
}

enum TaskStatus {
  active,
  delayed,
  completed,
}

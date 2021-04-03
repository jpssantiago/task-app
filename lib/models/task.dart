class Task {
  String title;
  DateTime createdDate;
  TaskStatus status;

  Task({
    this.title,
    this.createdDate,
    this.status,
  });

  static Task createTask(String title) {
    return Task(
      title: title,
      status: TaskStatus.active,
      createdDate: DateTime.now(),
    );
  }
}

enum TaskStatus {
  active,
  delayed,
  completed,
}

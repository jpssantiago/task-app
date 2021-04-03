int incrementedId = 1;

class Task {
  int id;
  String title;
  DateTime createdDate;
  TaskStatus status;

  Task({
    this.id,
    this.title,
    this.createdDate,
    this.status,
  });

  static Task createTask({String title, DateTime date}) {
    return Task(
      id: incrementedId++,
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

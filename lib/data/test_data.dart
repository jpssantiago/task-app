import 'package:task_app/models/task.dart';

class TestData {
  static List<Task> getTestTasks() {
    return [
      Task(
        title: 'Reunião',
        createdDate: DateTime.now(),
        status: TaskStatus.active,
      ),
      Task(
        title: 'Terminar relatórios',
        createdDate: DateTime.now(),
        status: TaskStatus.active,
      ),
    ];
  }
}

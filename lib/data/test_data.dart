import 'package:task_app/models/task.dart';

class TestData {
  static List<Task> getTestTasks() {
    return [
      Task(
        title: 'Reunião',
        finalDate: DateTime(2021, 3, 3, 19), // 19:00
        status: TaskStatus.active,
      ),
      Task(
        title: 'Terminar relatórios',
        finalDate: DateTime(2021, 3, 4, 15), // 15:00
        status: TaskStatus.active,
      ),
    ];
  }
}

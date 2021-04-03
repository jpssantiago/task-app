import 'package:flutter/material.dart';

import 'package:task_app/data/test_data.dart';
import 'package:task_app/models/task.dart';

class TaskProvider extends ChangeNotifier {
  List<Task> _tasks = TestData.getTestTasks();

  List<Task> get tasks => _tasks;

  void addTask(Task task) {
    _tasks.add(task);

    notifyListeners();
  }

  void deleteTask(Task task) {
    _tasks.remove(task);

    notifyListeners();
  }

  void setStatus({Task task, TaskStatus status}) {
    task.status = status;

    notifyListeners();
  }
}

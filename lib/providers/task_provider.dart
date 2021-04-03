import 'package:flutter/material.dart';

import 'package:task_app/data/test_data.dart';
import 'package:task_app/models/task.dart';

class TaskProvider extends ChangeNotifier {
  DateTime _selectedDate = DateTime.now();
  List<Task> _tasks = TestData.getTestTasks();

  DateTime get selectedDate => _selectedDate;
  // List<Task> get tasks => _tasks;

  void changeSelectedDate(DateTime date) {
    _selectedDate = date;

    notifyListeners();
  }

  List<Task> getTasks() {
    List<Task> list = [];

    for (Task task in _tasks) {
      if (task.createdDate.year == selectedDate.year &&
          task.createdDate.month == selectedDate.month &&
          task.createdDate.day == selectedDate.day) {
        list.add(task);
      }
    }

    return list;
  }

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

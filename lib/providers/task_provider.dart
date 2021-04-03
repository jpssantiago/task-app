import 'package:flutter/material.dart';

import 'package:task_app/models/task.dart';
import 'package:task_app/utils/date_provider_utils.dart';

class TaskProvider extends ChangeNotifier {
  DateTime _selectedDate = DateTime.now();
  List<Task> _tasks = [];

  DateTime get selectedDate => _selectedDate;
  // List<Task> get tasks => _tasks;

  void setDate(DateTime date) {
    _selectedDate = date;

    notifyListeners();
  }

  List<Task> getTasks() {
    List<Task> list = [];

    for (Task task in _tasks) {
      bool sameDay = DateProviderUtils.sameDay(task.createdDate, selectedDate);
      if (sameDay) {
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

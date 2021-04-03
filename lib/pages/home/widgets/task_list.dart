import 'package:flutter/material.dart';

import 'package:task_app/models/task.dart';
import 'package:task_app/pages/home/widgets/task_item.dart';

class TaskList extends StatelessWidget {
  final List<Task> tasks;

  TaskList({
    @required this.tasks,
  });

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: tasks.length,
      itemBuilder: (context, index) {
        return TaskItem(
          task: tasks[index],
        );
      },
    );
  }
}

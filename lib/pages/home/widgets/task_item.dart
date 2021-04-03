import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'package:task_app/models/task.dart';
import 'package:task_app/providers/task_provider.dart';

class TaskItem extends StatelessWidget {
  final Task task;

  TaskItem({
    @required this.task,
  });

  @override
  Widget build(BuildContext context) {
    bool isCompleted() {
      return task.status == TaskStatus.completed;
    }

    void toggleCompleted(bool value) {
      var provider = Provider.of<TaskProvider>(context, listen: false);

      if (value) {
        provider.setStatus(
          task: task,
          status: TaskStatus.completed,
        );
      } else {
        provider.setStatus(
          task: task,
          status: TaskStatus.active,
        );
      }
    }

    Widget showTimeLeft() {
      if (task.finalDate == null) {
        return Icon(
          Icons.alarm_off,
          color: Colors.white,
        );
      }

      return Text(
        task.getTimeLeft(DateTime.now()),
        style: TextStyle(
          color: Colors.white,
          fontSize: 12,
          fontWeight: FontWeight.bold,
        ),
      );
    }

    return ListTile(
      leading: Container(
        width: 36,
        height: 36,
        decoration: BoxDecoration(
          color: Colors.blue,
          shape: BoxShape.circle,
        ),
        child: Center(
          child: task.status == TaskStatus.completed
              ? Icon(
                  Icons.check,
                  color: Colors.white,
                )
              : showTimeLeft(),
        ),
      ),
      title: Text(
        task.title,
        style: TextStyle(
          decoration: task.status == TaskStatus.completed
              ? TextDecoration.lineThrough
              : TextDecoration.none,
        ),
      ),
      trailing: Checkbox(
        value: isCompleted(),
        onChanged: toggleCompleted,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(2),
        ),
      ),
    );
  }
}

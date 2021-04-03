import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'package:task_app/models/task.dart';
import 'package:task_app/providers/task_provider.dart';
import 'package:task_app/widgets/snack_bar.dart';

class TaskItem extends StatelessWidget {
  final Task task;

  TaskItem({
    @required this.task,
  });

  @override
  Widget build(BuildContext context) {
    var provider = Provider.of<TaskProvider>(context, listen: false);

    bool isCompleted() {
      return task.status == TaskStatus.completed;
    }

    void deleteTask() {
      provider.deleteTask(task);

      showSnackBarMessage(
        context: context,
        message: 'Tarefa excluida com sucesso.',
      );
    }

    void toggleCompleted(bool value) {
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

    return Dismissible(
      key: Key(task.id.toString()),
      background: Container(
        color: Colors.redAccent,
      ),
      onDismissed: (_) => deleteTask(),
      child: ListTile(
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
                : Icon(
                    Icons.alarm_off,
                    color: Colors.white,
                  ),
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
      ),
    );
  }
}

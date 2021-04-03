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
    if (tasks.length == 0) {
      return Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Sem tarefas por enquanto.',
              style: TextStyle(
                fontSize: 16,
              ),
            ),
            Container(height: 10),
            GestureDetector(
              onTap: () => print('To be implemented yet.'),
              child: Text(
                'Você deseja adicionar alguma tarefa recente?',
                style: TextStyle(
                  color: Colors.blue,
                ),
              ),
            ),
          ],
        ),
      );
    }

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

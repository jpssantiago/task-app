import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'package:task_app/models/task.dart';
import 'package:task_app/providers/task_provider.dart';

void showAddTaskModal(BuildContext context) {
  final TextEditingController controller = TextEditingController();

  void addTask() {
    String text = controller.text;

    if (text == null || text == '') return;

    var provider = Provider.of<TaskProvider>(context, listen: false);
    provider.addTask(Task.createTask(text));

    Navigator.of(context).pop();
  }

  showModalBottomSheet(
    context: context,
    isScrollControlled: true,
    builder: (context) {
      final Size size = MediaQuery.of(context).size;

      return Padding(
        padding: MediaQuery.of(context).viewInsets,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            buildTextField(
              controller: controller,
              size: size,
            ),
            Container(height: 10),
            buildRowButtons(
              onPressed: addTask,
            ),
          ],
        ),
      );
    },
  );
}

Padding buildTextField({TextEditingController controller, Size size}) {
  return Padding(
    padding: const EdgeInsets.only(
      left: 30,
      right: 30,
      top: 10,
    ),
    child: Container(
      width: size.width,
      height: 60,
      child: TextField(
        controller: controller,
        decoration: InputDecoration(
          labelText: 'Nome da tarefa...',
          border: InputBorder.none,
        ),
        autofocus: true,
      ),
    ),
  );
}

Padding buildRowButtons({VoidCallback onPressed}) {
  return Padding(
    padding: const EdgeInsets.only(
      left: 30,
      right: 30,
      bottom: 10,
    ),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Icon(
          Icons.event_available,
          color: Colors.blue,
        ),
        TextButton(
          child: Text('Salvar'),
          onPressed: onPressed,
        )
      ],
    ),
  );
}

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:task_app/modals/add_task/widgets/expanded_button.dart';

import 'package:task_app/modals/add_task/widgets/text_field_container.dart';

import 'package:task_app/models/task.dart';
import 'package:task_app/providers/task_provider.dart';
import 'package:task_app/widgets/alert_dialog.dart';
import 'package:task_app/widgets/snack_bar.dart';

class AddTask extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final TextEditingController _controller = TextEditingController();

    void addTask(String text) {
      if (text == null || text == '') {
        showDialogMessage(
          context: context,
          message: 'Informe um nome para a tarefa.',
        );
        return;
      }

      var provider = Provider.of<TaskProvider>(context, listen: false);
      provider.addTask(Task.createTask(text));

      Navigator.of(context).pop();

      showSnackBarMessage(
        context: context,
        message: 'Tarefa adicionada com sucesso.',
      );
    }

    return Padding(
      padding: MediaQuery.of(context).viewInsets,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          TextFieldContainer(
            controller: _controller,
            onSubmitted: addTask,
          ),
          Container(height: 10),
          ExpandedButton(
            text: 'Salvar',
            onTap: () => addTask(_controller.text),
          ),
        ],
      ),
    );
  }
}

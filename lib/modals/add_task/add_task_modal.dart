import 'package:flutter/material.dart';

import 'package:task_app/modals/add_task/widgets/add_task.dart';

void showAddTaskModal(BuildContext context) {
  showModalBottomSheet(
    context: context,
    builder: (context) => AddTask(),
  );
}

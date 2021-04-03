import 'package:flutter/material.dart';

import 'package:task_app/modals/add_task/add_task_modal.dart';

FloatingActionButton buildFloatingActionButton(BuildContext context) {
  return FloatingActionButton(
    child: Icon(Icons.add),
    onPressed: () => showAddTaskModal(context),
  );
}

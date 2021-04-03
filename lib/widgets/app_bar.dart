import 'package:flutter/material.dart';
import 'package:task_app/providers/task_provider.dart';
import 'package:task_app/utils/date_provider_utils.dart';

AppBar buildAppBar(TaskProvider provider) {
  String formatDate() {
    return DateProviderUtils.getFormattedDate(provider.selectedDate);
  }

  return AppBar(
    backgroundColor: Colors.white,
    elevation: 1, // Default = 4
    title: Text(
      'Tarefas',
      style: TextStyle(
        color: Colors.black,
      ),
    ),
    actions: [
      Padding(
        padding: const EdgeInsets.only(right: 25),
        child: Row(
          children: [
            GestureDetector(
              child: Icon(
                Icons.chevron_left,
                color: Colors.black,
              ),
              onTap: () {
                provider.setDate(
                  provider.selectedDate.subtract(
                    Duration(days: 1),
                  ),
                );
              },
            ),
            // TODO: Show a calendar when click on text.
            Text(
              formatDate(),
              style: TextStyle(
                color: Colors.black,
              ),
            ),
            GestureDetector(
              child: Icon(
                Icons.chevron_right,
                color: Colors.black,
              ),
              onTap: () {
                provider.setDate(
                  provider.selectedDate.add(
                    Duration(days: 1),
                  ),
                );
              },
            ),
          ],
        ),
      ),
    ],
  );
}

import 'package:flutter/material.dart';

void showAddTaskModal(BuildContext context) {
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
            buildTextField(size),
            Container(height: 10),
            buildRowButtons(),
          ],
        ),
      );
    },
  );
}

Padding buildTextField(Size size) {
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
        decoration: InputDecoration(
          labelText: 'Nome da tarefa...',
          border: InputBorder.none,
        ),
        autofocus: true,
      ),
    ),
  );
}

Padding buildRowButtons() {
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
          onPressed: () {},
        )
      ],
    ),
  );
}

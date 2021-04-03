import 'package:flutter/material.dart';

class TextFieldContainer extends StatelessWidget {
  final TextEditingController controller;
  final VoidCallback onSubmitted;

  TextFieldContainer({
    @required this.controller,
    @required this.onSubmitted,
  });

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;

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
}

import 'package:flutter/material.dart';

void showDialogMessage({BuildContext context, String message, String title}) {
  Widget okButton = TextButton(
    child: Text("Fechar"),
    onPressed: () => Navigator.of(context).pop(),
  );

  AlertDialog alert = AlertDialog(
    title: Text(title ?? "Aviso"),
    content: Text(message),
    actions: [
      okButton,
    ],
  );

  showDialog(
    context: context,
    builder: (BuildContext context) {
      return alert;
    },
  );
}

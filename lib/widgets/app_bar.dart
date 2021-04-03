import 'package:flutter/material.dart';

AppBar buildAppBar() {
  return AppBar(
    backgroundColor: Colors.white,
    elevation: 1, // Default = 4
    title: Text(
      'Tasks',
      style: TextStyle(
        color: Colors.black,
      ),
    ),
  );
}

import 'package:flutter/material.dart';

class ExpandedButton extends StatelessWidget {
  final String text;
  final VoidCallback onTap;

  ExpandedButton({
    @required this.text,
    @required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;

    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: size.width,
        height: 60,
        color: Colors.blue,
        child: Padding(
          padding: const EdgeInsets.only(left: 30, right: 30),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                text,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Icon(
                Icons.check,
                color: Colors.white,
              )
            ],
          ),
        ),
      ),
    );
  }
}

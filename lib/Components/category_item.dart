import 'package:flutter/material.dart';

class Category extends StatelessWidget {
  const Category(this.text, this.color, this.onTap, {super.key});
  final String? text;
  final Color? color;
  final Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.only(left: 12),
        color: color,
        width: double.infinity,
        alignment: Alignment.centerLeft,
        height: 60,
        child: Text(
          '$text',
          style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}

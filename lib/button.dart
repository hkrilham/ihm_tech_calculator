import 'package:flutter/material.dart';

class MyBoton extends StatelessWidget {
  MyBoton(
      {super.key,
      required this.name,
      required this.value,
      this.colors = Colors.black87});

  String name = '';
  VoidCallback value;
  Color colors;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: value,
      child: Container(
        alignment: Alignment.center,
        decoration: BoxDecoration(
          borderRadius: const BorderRadius.all(Radius.circular(30)),
          color: colors,
        ),
        padding: EdgeInsets.all(10),
        width: 90,
        height: 90,
        child: Text(
          name,
          style: TextStyle(fontSize: 50),
        ),
      ),
    );
  }
}

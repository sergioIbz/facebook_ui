import 'package:flutter/material.dart';

import 'circle_buttom.dart';

class QuickButtom extends StatelessWidget {
  final Color color;
  final String texto;
  final IconData icono;

  const QuickButtom(
      {super.key,
      required this.color,
      required this.texto,
      required this.icono});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 16),
      child: Container(
        height: 36,
        decoration: BoxDecoration(
          color: color.withOpacity(.25),
          borderRadius: BorderRadius.circular(30),
        ),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            CircleButton(
              color: color,
              iconData: icono,
              //redContainer: true,
            ),
            Text(
              texto,
              style: TextStyle(color: color),
            ),
            const SizedBox(width: 18),
          ],
        ),
      ),
    );
  }
}

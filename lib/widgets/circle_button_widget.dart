import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CircleButtonWidget extends StatelessWidget {
  final String label;
  final Color color;
  final Icon icon;

  const CircleButtonWidget({
    Key? key,
    required this.label,
    required this.color,
    required this.icon
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: 60,
          height: 60,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(100),
            border: Border.all(width: 1, color: color)
          ),
          child: icon,
        ),
        const SizedBox(height: 8),
        Text(
            label,
          style: TextStyle(
            color: color
          ),
        )
      ],
    );
  }

}
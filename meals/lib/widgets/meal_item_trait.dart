import 'package:flutter/material.dart';

class MealItemTrait extends StatelessWidget {
  const MealItemTrait({super.key, required this.icon, required this.label});

  final IconData icon;
  final String label;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(icon, size: 20, color: Colors.white),
        const SizedBox(width: 6),
        Text(
          '${label[0].toUpperCase()}${label.substring(1)}',
          style: TextStyle(
            color: Colors.white,
            fontSize: Theme.of(context).textTheme.bodyLarge?.fontSize,
          ),
        ),
      ],
    );
  }
}

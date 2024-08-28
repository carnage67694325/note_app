import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:note_app/widget/custom_icon._button.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key, required this.title, required this.icon});
  final String title;
  final IconData icon;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          title,
          style: const TextStyle(fontSize: 24),
        ),
        CustomIconButtton(
          icon: icon,
        )
      ],
    );
  }
}

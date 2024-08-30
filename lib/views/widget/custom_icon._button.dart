import 'package:flutter/material.dart';

class CustomIconButtton extends StatelessWidget {
  const CustomIconButtton({super.key, required this.icon, this.onPressed});
  final IconData icon;
  final void Function()? onPressed;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 46,
      width: 46,
      decoration: BoxDecoration(
          color: Colors.white.withOpacity(.05),
          borderRadius: BorderRadius.circular(16)),
      child: IconButton(onPressed: onPressed, icon: Icon(icon)),
    );
  }
}

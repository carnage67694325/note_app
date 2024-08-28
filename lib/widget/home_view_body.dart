import 'package:flutter/material.dart';
import 'package:note_app/widget/custom_app_bar.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 12),
        child: Column(
          children: [
            SizedBox(
              height: 50,
            ),
            CustomAppBar()
          ],
        ),
      ),
    );
  }
}

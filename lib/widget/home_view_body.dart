import 'package:flutter/material.dart';
import 'package:note_app/widget/custom_app_bar.dart';
import 'package:note_app/widget/custom_note_item.dart';

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
            CustomAppBar(),
            SizedBox(
              height: 25,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 8.0),
              child: CustomNoteItem(),
            ),
          ],
        ),
      ),
    );
  }
}

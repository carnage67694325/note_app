import 'package:flutter/material.dart';
import 'package:note_app/constants.dart';
import 'package:note_app/views/widget/add_note_bottom_sheet.dart';
import 'package:note_app/views/widget/home_view_body.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        floatingActionButton: FloatingActionButton(
          shape: const CircleBorder(),
          backgroundColor: kPrimaryColor,
          onPressed: () {
            showModalBottomSheet(
                context: context,
                builder: (context) {
                  return const AddNoteBottomSheet();
                });
          },
          child: const Icon(
            Icons.add,
            color: Colors.black,
          ),
        ),
        body: const HomeViewBody());
  }
}

import 'package:flutter/material.dart';
import 'package:note_app/widget/custom_note_item.dart';

class NotesListView extends StatelessWidget {
  const NotesListView({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (context, index) {
        return Padding(
          padding: EdgeInsets.symmetric(horizontal: 8.0, vertical: 12),
          child: CustomNoteItem(),
        );
      },
    );
  }
}

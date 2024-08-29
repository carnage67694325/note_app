import 'package:flutter/material.dart';
import 'package:note_app/views/edit_note_view.dart';
import 'package:note_app/views/widget/custom_note_item.dart';

class NotesListView extends StatelessWidget {
  const NotesListView({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 16),
      child: ListView.builder(
        padding: EdgeInsets.zero,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 5),
            child: GestureDetector(
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return const EditNoteView();
                  }));
                },
                child: const CustomNoteItem()),
          );
        },
      ),
    );
  }
}

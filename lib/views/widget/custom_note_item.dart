import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:note_app/cubits/note_cubit/notes_cubit.dart';
import 'package:note_app/models/note_model.dart';

class CustomNoteItem extends StatelessWidget {
  const CustomNoteItem({super.key, required this.note});
  final NoteModel note;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        color: Color(note.color),
      ),
      child: Padding(
        padding: const EdgeInsets.only(left: 16, top: 16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            ListTile(
              title: Padding(
                padding: EdgeInsets.only(bottom: 12),
                child: Text(
                  note.title,
                  style: TextStyle(color: Colors.black, fontSize: 24),
                ),
              ),
              subtitle: Padding(
                padding: const EdgeInsets.only(bottom: 16),
                child: Text(
                  note.subTitle,
                  style: TextStyle(
                      color: Colors.black.withOpacity(0.5), fontSize: 20),
                ),
              ),
              trailing: IconButton(
                onPressed: () {
                  note.delete();
                  BlocProvider.of<NotesCubit>(context).fetchAllNotes();
                },
                icon: const Padding(
                  padding: EdgeInsets.only(bottom: 12),
                  child: Icon(
                    FontAwesomeIcons.trash,
                    color: Colors.black,
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 16, bottom: 16),
              child: Text(
                note.date,
                style: TextStyle(
                    color: Colors.black.withOpacity(0.5), fontSize: 14),
              ),
            )
          ],
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:note_app/cubits/note_cubit/notes_cubit.dart';
import 'package:note_app/helper/format_date.dart';
import 'package:note_app/models/note_model.dart';
import 'package:note_app/views/widget/custom_app_bar.dart';
import 'package:note_app/views/widget/custom_text_field.dart';
import 'package:note_app/views/widget/edit_note_colors_list.dart';

class EditNoteViewBody extends StatefulWidget {
  const EditNoteViewBody({super.key, required this.note});
  final NoteModel note;
  @override
  State<EditNoteViewBody> createState() => _EditNoteViewBodyState();
}

class _EditNoteViewBodyState extends State<EditNoteViewBody> {
  final GlobalKey<FormState> formKey = GlobalKey();
  String? title, subTitle;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 12),
        child: Column(children: [
          const SizedBox(
            height: 50,
          ),
          CustomAppBar(
              onPressed: () {
                widget.note.title = title ?? widget.note.title;
                widget.note.subTitle = subTitle ?? widget.note.subTitle;
                String formattedDate = formatDate();
                widget.note.date = formattedDate;
                widget.note.save();
                BlocProvider.of<NotesCubit>(context).fetchAllNotes();
                Navigator.pop(context);
              },
              title: 'Edit Note',
              icon: Icons.check),
          const SizedBox(
            height: 50,
          ),
          CustomTextField(
            initialValue: widget.note.title,
            onChanged: (value) {
              title = value;
            },
            hint: widget.note.title,
          ),
          const SizedBox(
            height: 24,
          ),
          CustomTextField(
            initialValue: widget.note.subTitle,
            onChanged: (value) {
              subTitle = value;
            },
            hint: widget.note.subTitle,
            maxLines: 5,
          ),
          const SizedBox(
            height: 24,
          ),
          EditNoteColorItemList(note: widget.note)
        ]),
      ),
    );
  }
}

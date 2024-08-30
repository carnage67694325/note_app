import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:note_app/constants.dart';
import 'package:note_app/cubits/add_note_cubit/cubit/add_note_cubit.dart';
import 'package:note_app/cubits/note_cubit/notes_cubit.dart';
import 'package:note_app/models/note_model.dart';
import 'package:note_app/views/widget/color_item_list.dart';

class EditNoteColorItemList extends StatefulWidget {
  const EditNoteColorItemList({super.key, required this.note});
  final NoteModel note;
  @override
  State<EditNoteColorItemList> createState() => _EditNoteColorItemListState();
}

class _EditNoteColorItemListState extends State<EditNoteColorItemList> {
  late int currentIndex;
  @override
  void initState() {
    currentIndex = kColors.indexOf(Color(widget.note.color));
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 38 * 2,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: kColors.length,
        itemBuilder: (context, index) {
          return GestureDetector(
            onTap: () {
              currentIndex = index;
              widget.note.color = kColors[index].value;
              setState(() {});
            },
            child: ColorItem(
              color: kColors[index],
              isPicked: currentIndex == index,
            ),
          );
        },
      ),
    );
  }
}

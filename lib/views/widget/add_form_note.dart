import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';
import 'package:note_app/constants.dart';
import 'package:note_app/cubits/add_note_cubit/cubit/add_note_cubit.dart';
import 'package:note_app/helper/format_date.dart';
import 'package:note_app/models/note_model.dart';
import 'package:note_app/views/widget/color_item_list.dart';
import 'package:note_app/views/widget/custom_button.dart';
import 'package:note_app/views/widget/custom_text_field.dart';

class AddFormNote extends StatefulWidget {
  const AddFormNote({
    super.key,
  });

  @override
  State<AddFormNote> createState() => _AddFormNoteState();
}

class _AddFormNoteState extends State<AddFormNote> {
  final GlobalKey<FormState> formKey = GlobalKey();
  AutovalidateMode autovalidateMode = AutovalidateMode.disabled;
  String? title, subTitle;
  @override
  Widget build(BuildContext context) {
    return Form(
      key: formKey,
      autovalidateMode: autovalidateMode,
      child: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Column(
            children: [
              const SizedBox(
                height: 50,
              ),
              CustomTextField(
                onSaved: (value) {
                  title = value;
                },
                hint: 'Title',
              ),
              const SizedBox(
                height: 16,
              ),
              CustomTextField(
                onSaved: (value) {
                  subTitle = value;
                },
                hint: 'Content',
                maxLines: 5,
              ),
              const SizedBox(
                height: 32,
              ),
              const ColorItemList(),
              const SizedBox(
                height: 32,
              ),
              BlocBuilder<AddNoteCubit, AddNoteState>(
                builder: (context, state) {
                  return CustomButton(
                    isLoading: state is AddNoteLoading ? true : false,
                    onTap: () {
                      if (formKey.currentState!.validate()) {
                        formKey.currentState!.save();
                        String formattedDate = formatDate();
                        NoteModel noteModel = NoteModel(
                            title: title!,
                            subTitle: subTitle!,
                            date: formattedDate,
                            color: kPrimaryColor.value);
                        BlocProvider.of<AddNoteCubit>(context)
                            .addNote(noteModel);
                      } else {
                        autovalidateMode = AutovalidateMode.always;
                        setState(() {});
                      }
                    },
                  );
                },
              ),
              const SizedBox(
                height: 32,
              ),
              SizedBox(
                height: MediaQuery.of(context).viewInsets.bottom,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

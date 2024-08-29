import 'package:flutter/material.dart';
import 'package:note_app/views/widget/custom_app_bar.dart';
import 'package:note_app/views/widget/custom_text_field.dart';

class EditNoteViewBody extends StatefulWidget {
  const EditNoteViewBody({super.key});

  @override
  State<EditNoteViewBody> createState() => _EditNoteViewBodyState();
}

class _EditNoteViewBodyState extends State<EditNoteViewBody> {
  final GlobalKey<FormState> formKey = GlobalKey();
  AutovalidateMode autovalidateMode = AutovalidateMode.disabled;
  String? title, subTitle;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Form(
        key: formKey,
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 12),
          child: Column(children: [
            SizedBox(
              height: 50,
            ),
            CustomAppBar(title: 'Edit Note', icon: Icons.check),
            SizedBox(
              height: 50,
            ),
            CustomTextField(
              hint: 'Title',
              onSaved: (value) {
                title = value;
              },
            ),
            SizedBox(
              height: 24,
            ),
            CustomTextField(
              hint: 'Content',
              onSaved: (value) {
                subTitle = value;
              },
              maxLines: 5,
            ),
          ]),
        ),
      ),
    );
  }
}

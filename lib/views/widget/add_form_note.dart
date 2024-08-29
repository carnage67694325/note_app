import 'package:flutter/material.dart';
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
              CustomButton(
                onTap: () {
                  if (formKey.currentState!.validate()) {
                    formKey.currentState!.save();
                  } else {
                    autovalidateMode = AutovalidateMode.always;
                    setState(() {});
                  }
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

import 'package:flutter/material.dart';
import 'package:note_app/widget/custom_button.dart';
import 'package:note_app/widget/custom_text_field.dart';

class AddNoteBottomSheet extends StatelessWidget {
  const AddNoteBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Column(
          children: [
            const SizedBox(
              height: 50,
            ),
            const CustomTextField(
              hint: 'Title',
            ),
            const SizedBox(
              height: 16,
            ),
            const CustomTextField(
              hint: 'Content',
              maxLines: 5,
            ),
            const SizedBox(
              height: 32,
            ),
            const CustomButton(),
            const SizedBox(
              height: 32,
            ),
            SizedBox(
              height: MediaQuery.of(context).viewInsets.bottom,
            ),
          ],
        ),
      ),
    );
  }
}

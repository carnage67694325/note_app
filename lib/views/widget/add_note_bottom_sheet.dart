import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:loading_animation_widget/loading_animation_widget.dart';
import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';
import 'package:note_app/constants.dart';
import 'package:note_app/cubits/add_note_cubit/cubit/add_note_cubit.dart';
import 'package:note_app/views/widget/add_form_note.dart';

class AddNoteBottomSheet extends StatelessWidget {
  const AddNoteBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<AddNoteCubit, AddNoteState>(
      listener: (context, state) {
        if (state is AddNoteSuccess) {
          Navigator.pop(context);
        }

        if (state is AddNoteFailure) {
          print('failed ${state.errMessage}');
        }
      },
      builder: (context, state) {
        return Center(
          child: ModalProgressHUD(
              progressIndicator: LoadingAnimationWidget.fourRotatingDots(
                  color: kPrimaryColor, size: 150),
              inAsyncCall: state is AddNoteFailure ? true : false,
              child: const AddFormNote()),
        );
      },
    );
  }
}

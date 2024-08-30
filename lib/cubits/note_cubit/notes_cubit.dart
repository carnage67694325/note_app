import 'package:bloc/bloc.dart';
import 'package:hive/hive.dart';
import 'package:meta/meta.dart';
import 'package:note_app/constants.dart';
import 'package:note_app/models/note_model.dart';

part 'notes_state.dart';

class NotesCubit extends Cubit<NotesState> {
  NotesCubit() : super(NotesInitial());
  fetchAllNotes() async {
    try {
      var hiveNoteBox = Hive.box<NoteModel>(kNotesBox);
      List<NoteModel> notes = hiveNoteBox.values.toList();
      emit(NotesSuccess(notes));
    } catch (e) {
      emit(NotesFailure(e.toString()));
    }
  }
}

import 'package:bloc/bloc.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:local_notes_app/core/models/note_model.dart';
import 'package:local_notes_app/core/utiles/constants.dart';
import 'package:local_notes_app/views/note_view/manager/add_note_state.dart';

class AddNoteCubit extends Cubit<AddNoteState> {
  AddNoteCubit() : super(AddNoteInitialState());
  int? color;
  int pressed = -1;
  void assignColor(int index) {
    color = index;
    emit(ColorAssignedState());
  }
  void select(int index) {
    pressed = index;
    emit(ChangeColorSelectState());
  }
  Future<void> addNote(NoteModel note) async {
    emit(AddNoteLoadingState());
    try {
      var noteBox = Hive.box<NoteModel>(kNotesBox);
      noteBox.add(note);
      emit(AddNoteSuccessState());
    } on Exception catch (error) {
      emit(AddNoteErrorState(error));
    }
  }
}

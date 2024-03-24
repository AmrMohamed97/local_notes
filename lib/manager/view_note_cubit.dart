import 'dart:math';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive/hive.dart';
import 'package:local_notes_app/core/models/note_model.dart';
import 'package:local_notes_app/core/utiles/constants.dart';
import 'package:local_notes_app/manager/view_note_state.dart';

class ViewNoteCubit extends Cubit<ViewNoteState> {
  ViewNoteCubit() : super(ViewNoteInitialState());
  List<NoteModel>? allNotes;
  void viewNote() {
    var notes = Hive.box<NoteModel>(kNotesBox);
    allNotes = notes.values.toList();
    emit(ViewNoteSuccessState());
  }
}

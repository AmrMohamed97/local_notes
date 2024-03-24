import 'package:bloc/bloc.dart';
import 'package:local_notes_app/manager/add_note_state.dart';

class AddNoteCubit extends Cubit<AddNoteState> {
  AddNoteCubit() : super(AddNoteInitialState());
}

abstract class AddNoteState {}

class AddNoteInitialState extends AddNoteState {}
class ColorAssignedState extends AddNoteState {}
class ChangeColorSelectState extends AddNoteState {}

class AddNoteLoadingState extends AddNoteState {}

class AddNoteSuccessState extends AddNoteState {}

class AddNoteErrorState extends AddNoteState {
  AddNoteErrorState(this.error);
  final dynamic error;
}

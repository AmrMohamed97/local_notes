import 'package:flutter/material.dart';
import 'package:local_notes_app/core/models/note_model.dart';
import 'package:local_notes_app/views/edit_note/widgets/edit_note_view_body.dart';

class EditNoteVew extends StatelessWidget {
  const EditNoteVew({super.key, required this.note});
  final NoteModel note;
  @override
  Widget build(BuildContext context) {
    return   Scaffold(
      body: EditNoteViewBody(note: note),
    );
  }
}

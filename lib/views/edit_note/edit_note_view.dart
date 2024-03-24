import 'package:flutter/material.dart';
import 'package:local_notes_app/views/edit_note/widgets/edit_note_view_body.dart';

class EditNoteVew extends StatelessWidget {
  const EditNoteVew({super.key});
  static const id = '/editNoteView';
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: EditNoteViewBody(),
    );
  }
}

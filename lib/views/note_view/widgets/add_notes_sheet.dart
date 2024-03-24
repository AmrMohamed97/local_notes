import 'package:flutter/material.dart';
import 'package:local_notes_app/views/note_view/widgets/add_notes_form.dart';

class AddNoteBottemSheet extends StatelessWidget {
  const AddNoteBottemSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 20.0),
      child: SingleChildScrollView(child: AddNotesForm()),
    );
  }
}

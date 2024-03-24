import 'package:flutter/material.dart';
import 'package:local_notes_app/views/note_view/widgets/add_notes_sheet.dart';
import 'package:local_notes_app/views/note_view/widgets/note_view_body.dart';

class NotesView extends StatelessWidget {
  const NotesView({super.key});
  static const id = '/';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showModalBottomSheet(
            // backgroundColor: const Color(0xff1e1e1e),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(16.0),
            ),
            context: context,
            builder: (context) => const AddNoteBottemSheet(),
          );
        },
        child: const Icon(Icons.add),
      ),
      body: const NoteViewBody(),
    );
  }
}

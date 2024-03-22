import 'package:flutter/material.dart';
import 'package:local_notes_app/views/widgets/note_item.dart';

class NoteListView extends StatelessWidget {
  const NoteListView({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      padding: const EdgeInsets.only(top: 20.0),
      itemBuilder: (context, index) => const Padding(
        padding: EdgeInsets.symmetric(vertical: 4.0),
        child: NoteItem(),
      ),
    );
  }
}

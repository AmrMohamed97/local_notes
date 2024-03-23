import 'package:flutter/material.dart';
import 'package:local_notes_app/views/note_view/widgets/custom_app_bar.dart';
import 'package:local_notes_app/views/note_view/widgets/note_list_view.dart';

class NoteViewBody extends StatelessWidget {
  const NoteViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
        child: Padding(
      padding: EdgeInsets.symmetric(horizontal: 28.0),
      child: Column(
        children: [
          CustomAppBar(
            icon: Icons.search,
            title: 'Notes',
          ),
          Expanded(child: NoteListView()),
        ],
      ),
    ));
  }
}

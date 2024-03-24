import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:local_notes_app/core/models/note_model.dart';
import 'package:local_notes_app/manager/view_note_cubit.dart';
import 'package:local_notes_app/manager/view_note_state.dart';
import 'package:local_notes_app/views/note_view/widgets/note_item.dart';

class NoteListView extends StatelessWidget {
  const NoteListView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ViewNoteCubit, ViewNoteState>(
      builder: (context, state) {
        List<NoteModel> allNotes =
            BlocProvider.of<ViewNoteCubit>(context).allNotes ?? [];

        return ListView.builder(
          padding: const EdgeInsets.only(top: 20.0),
          itemBuilder: (context, index) => Padding(
            padding: const EdgeInsets.symmetric(vertical: 4.0),
            child: NoteItem(note: allNotes[index]),
          ),
          itemCount: allNotes.length,
        );
      },
    );
  }
}

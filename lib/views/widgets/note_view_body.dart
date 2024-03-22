import 'package:flutter/material.dart';
import 'package:local_notes_app/views/notes_view.dart';
import 'package:local_notes_app/views/widgets/custom_app_bar.dart';

class NoteViewBody extends StatelessWidget {
  const NoteViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Padding(
      padding: const EdgeInsets.symmetric(horizontal: 28.0),
      child: Column(
        children: [
          CustomAppBar(),
        ],
      ),
    ));
  }
}

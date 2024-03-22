import 'package:flutter/material.dart';
import 'package:local_notes_app/core/widgets/custom_text_field.dart';
import 'package:local_notes_app/views/widgets/custom_app_bar.dart';

class EditNoteViewBody extends StatelessWidget {
  const EditNoteViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 24.0),
      child: Column(children: [
        SafeArea(child: SizedBox(height: 10)),
        CustomAppBar(
          icon: Icons.check,
          title: 'Edit Note',
        ),
        SizedBox(
          height: 40,
        ),
        CustomTextField(
          hintText: 'title',
          textInputType: TextInputType.text,
          maxLines: 1,
        ),
        SizedBox(
          height: 15,
        ),
        CustomTextField(
          hintText: 'content',
          textInputType: TextInputType.text,
          maxLines: 5,
        ),
      ]),
    );
  }
}

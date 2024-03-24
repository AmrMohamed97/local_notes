import 'package:flutter/material.dart';
import 'package:local_notes_app/core/widgets/custom_text_field.dart';
import 'package:local_notes_app/views/note_view/widgets/custom_app_bar.dart';

class EditNoteViewBody extends StatelessWidget {
  const EditNoteViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24.0),
      child: AddNoteForm(),
    );
  }
}

class AddNoteForm extends StatelessWidget {
  AddNoteForm({super.key});
  String? title, subTitle;
  @override
  Widget build(BuildContext context) {
    final GlobalKey<FormState> formKey = GlobalKey();
    AutovalidateMode autovalidateMode = AutovalidateMode.disabled;
    return Form(
      key: formKey,
      autovalidateMode: autovalidateMode,
      child: Column(children: [
        const SafeArea(child: SizedBox(height: 10)),
        const CustomAppBar(
          icon: Icons.check,
          title: 'Edit Note',
        ),
        const SizedBox(
          height: 40,
        ),
        CustomTextField(
          onSaved: (value) {
            title = value;
          },
          validator: (value) {
            if (value?.isEmpty ?? true) {
              return 'title must not be empty';
            }
            return null;
          },
          hintText: 'title',
          textInputType: TextInputType.text,
          maxLines: 1,
        ),
        const SizedBox(
          height: 15,
        ),
        CustomTextField(
          onSaved: (value) {
            subTitle = value;
          },
          validator: (value) {
            if (value?.isEmpty ?? true) {
              return 'subTitle must not be empty';
            }
            return null;
          },
          hintText: 'content',
          textInputType: TextInputType.text,
          maxLines: 5,
        ),
      ]),
    );
  }
}

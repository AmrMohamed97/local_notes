import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:local_notes_app/core/models/note_model.dart';
import 'package:local_notes_app/core/widgets/custom_text_field.dart';
import 'package:local_notes_app/manager/view_note_cubit.dart';
import 'package:local_notes_app/views/note_view/widgets/custom_app_bar.dart';

class EditNoteViewBody extends StatefulWidget {
  const EditNoteViewBody({super.key, required this.note});
  final NoteModel note;

  @override
  State<EditNoteViewBody> createState() => _EditNoteViewBodyState();
}

class _EditNoteViewBodyState extends State<EditNoteViewBody> {
  String? title, subTitle;
  final GlobalKey<FormState> formKey = GlobalKey();
  AutovalidateMode autovalidateMode = AutovalidateMode.disabled;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24.0),
      child: Form(
        key: formKey,
        autovalidateMode: autovalidateMode,
        child: Column(children: [
          const SafeArea(child: SizedBox(height: 10)),
          CustomAppBar(
            icon: Icons.check,
            title: 'Edit Note',
            onPressed: () {
              widget.note.title = title ?? widget.note.title;
              widget.note.subTitle = subTitle ?? widget.note.subTitle;
              widget.note.save();
              BlocProvider.of<ViewNoteCubit>(context).viewNote();
              Navigator.pop(context);
            },
          ),
          const SizedBox(
            height: 40,
          ),
          CustomTextField(
            onChanged: (value) {
              title = value;
            },
            hintText: widget.note.title,
            textInputType: TextInputType.text,
            maxLines: 1,
          ),
          const SizedBox(
            height: 15,
          ),
          CustomTextField(
            onChanged: (value) {
              subTitle = value;
            },
            hintText: widget.note.subTitle,
            textInputType: TextInputType.text,
            maxLines: 5,
          ),
        ]),
      ),
    );
  }
}

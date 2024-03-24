import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:local_notes_app/core/models/note_model.dart';
import 'package:local_notes_app/core/widgets/custom_general_button.dart';
import 'package:local_notes_app/core/widgets/custom_text_field.dart';
import 'package:local_notes_app/manager/add_note_cubit.dart';
import 'package:local_notes_app/manager/add_note_state.dart';

class AddNotesForm extends StatefulWidget {
  const AddNotesForm({super.key});
  @override
  State<AddNotesForm> createState() => _AddNotesFormState();
}

class _AddNotesFormState extends State<AddNotesForm> {
  GlobalKey<FormState> formKey = GlobalKey();
  String? title, subTitle;
  AutovalidateMode autovalidateMode = AutovalidateMode.disabled;
  @override
  Widget build(BuildContext context) {
    return Form(
      key: formKey,
      autovalidateMode: autovalidateMode,
      child: Column(children: [
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
              return 'SubTitle must not be empty';
            }
            return null;
          },
          hintText: 'content',
          textInputType: TextInputType.text,
          maxLines: 5,
        ),
        // BlocBuilder<AddNoteCubit, AddNoteState>(
        // builder: (context, state) {
        // return
        Padding(
          padding: const EdgeInsets.only(top: 60.0, bottom: 8),
          child: CustomGeneralButton(
            label: 'Add',
            color: const Color(0xff5ADBC9),
            radius: 10,
            onTap: () async {
              if (formKey.currentState!.validate()) {
                formKey.currentState!.save();

                NoteModel myNote = NoteModel(
                  title: title!,
                  subTitle: subTitle!,
                  color: Colors.blue.value,
                  date: DateTime.now().toString(),
                );
                BlocProvider.of<AddNoteCubit>(context).addNote(myNote);
              } else {
                autovalidateMode = AutovalidateMode.always;
                setState(() {});
              }
            },
          ),
        ),
        // ;
        //   },
        // ),
      ]),
    );
  }
}

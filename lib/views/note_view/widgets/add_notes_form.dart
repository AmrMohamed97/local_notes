import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:local_notes_app/core/models/note_model.dart';
import 'package:local_notes_app/core/widgets/custom_general_button.dart';
import 'package:local_notes_app/core/widgets/custom_text_field.dart';
import 'package:local_notes_app/manager/add_note_controller.dart';

class AddNotesForm extends StatefulWidget {
  const AddNotesForm({super.key});
  @override
  State<AddNotesForm> createState() => _AddNotesFormState();
}

class _AddNotesFormState extends State<AddNotesForm> {
  GlobalKey<FormState> formKey = GlobalKey();
  String? title, subTitle;
  AutovalidateMode autovalidateMode = AutovalidateMode.disabled;
  AddNoteController controller = Get.find();
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
        Padding(
          padding: const EdgeInsets.only(top: 60.0, bottom: 8),
          child: CustomGeneralButton(
            label: 'Add',
            color: const Color(0xff5ADBC9),
            radius: 10,
            onTap: () async {
              if (formKey.currentState!.validate()) {
                formKey.currentState!.save();
                NoteModel note = NoteModel(
                  color: Colors.blue.value,
                  title: title!,
                  subTitle: subTitle!,
                  date: DateTime.now().toString(),
                );
                await controller.addNote(note);
              } else {
                autovalidateMode = AutovalidateMode.always;
                setState(() {});
              }
            },
          ),
        ),
      ]),
    );
  }
}

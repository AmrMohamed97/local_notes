import 'package:flutter/material.dart';
import 'package:local_notes_app/core/widgets/custom_general_button.dart';
import 'package:local_notes_app/core/widgets/custom_text_field.dart';

class AddNoteBottemSheet extends StatelessWidget {
  const AddNoteBottemSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0),
      child: SingleChildScrollView(child: AddNotesForm()),
    );
  }
}

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
            title = value;
          },
          validator: (value) {
            if (value?.isEmpty ?? true) {
              return 'title must not be empty';
            }
            return null;
          },
          hintText: 'content',
          textInputType: TextInputType.text,
          maxLines: 5,
        ),
        Padding(
          padding: EdgeInsets.only(top: 60.0, bottom: 8),
          child: CustomGeneralButton(
            label: 'Add',
            color: Color(0xff5ADBC9),
            radius: 10,
            onTap: () {
              if (formKey.currentState!.validate()) {
                formKey.currentState!.save();
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

import 'package:flutter/material.dart';
import 'package:local_notes_app/core/widgets/custom_general_button.dart';
import 'package:local_notes_app/core/widgets/custom_text_field.dart';

class AddNoteBottemSheet extends StatelessWidget {
  const AddNoteBottemSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 20.0),
      child: SingleChildScrollView(
        child: Column(children: [
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
          Padding(
            padding: EdgeInsets.only(top: 60.0, bottom: 8),
            child: CustomGeneralButton(
              label: 'Add',
              color: Color(0xff5ADBC9),
              radius: 10,
            ),
          ),
        ]),
      ),
    );
  }
}

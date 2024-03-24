import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:local_notes_app/manager/add_note_controller.dart';
import 'package:local_notes_app/views/note_view/widgets/add_notes_form.dart';
import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';

class AddNoteBottemSheet extends StatelessWidget {
  const AddNoteBottemSheet({super.key});

  @override
  Widget build(BuildContext context) {
    AddNoteController controller = Get.find();
    return ModalProgressHUD(
      inAsyncCall: controller.isLoad.value,
      child: const Padding(
        padding: EdgeInsets.symmetric(horizontal: 20.0),
        child: SingleChildScrollView(child: AddNotesForm()),
      ),
    );
  }
}

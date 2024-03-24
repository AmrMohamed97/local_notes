import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:local_notes_app/core/models/note_model.dart';
import 'package:local_notes_app/core/utiles/constants.dart';

class AddNoteController extends GetxController {
  RxBool isLoad = false.obs;
  Future<void> addNote(NoteModel note) async {
    isLoad.value = true;
    try {
      var noteBox = Hive.box<NoteModel>(kNotesBox);
      await noteBox.add(note);
      Get.snackbar('success', 'note is added');
      // Get.back();
      isLoad.value = false;
    } catch (e) {
      isLoad.value = false;
      Get.defaultDialog(
        title: 'error',
        middleText: e.toString(),
        cancel: const Text('ok'),
      );
    }
  }
}

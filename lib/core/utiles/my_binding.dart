import 'package:get/get.dart';
import 'package:local_notes_app/manager/add_note_controller.dart';

class MyBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => AddNoteController(), fenix: true);
  }
}

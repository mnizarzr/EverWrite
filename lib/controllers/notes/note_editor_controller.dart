import 'package:everwrite/ui/app_ui.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:everwrite/data/models/note.dart';
import 'package:hive/hive.dart';
import 'package:image_picker/image_picker.dart';

class NoteEditorController extends GetxController {
  var notes = [].obs;
  var selectedImagePath = ''.obs;

  TextEditingController titleController = TextEditingController();
  TextEditingController contentController = TextEditingController();
  FocusNode titleFocus = FocusNode();
  FocusNode contentFocus = FocusNode();

  @override
  onInit() {
    try {
      Hive.registerAdapter(NoteAdapter());
    } catch (e) {
      print(e);
    }
    getNotes();
    super.onInit();
  }

  pickImage(ImageSource imageSource) async {
    final pickedFile = await ImagePicker().pickImage(source: imageSource);
    if (pickedFile != null) {
      selectedImagePath.value = pickedFile.path;
      update();
    } else {
      Get.snackbar(
        'Canceled',
        'No image selected',
        snackPosition: SnackPosition.BOTTOM,
        backgroundColor: AppColors.red,
        colorText: AppColors.white,
      );
    }
  }

  addNote(Note note) async {
    notes.add(note);
    var box = await Hive.openBox('db');
    box.put('notes', notes.toList());
    print('To Do Object added $notes');
  }

  Future getNotes() async {
    Box? box;
    print('Getting notes');
    try {
      // box = Hive.box('db');
      box = await Hive.openBox('db');
    } catch (error) {
      print(error);
    }

    var tds = box?.get('notes');
    print('TODOS $tds');
    if (tds != null) notes.value = tds;
  }
}

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:everwrite/controllers/notes/note_editor_controller.dart';
import 'package:everwrite/data/models/note.dart';

class NotesScreen extends StatelessWidget {
  final controller = Get.put(NoteEditorController());

  NotesScreen({super.key});

  void addNote() {
    if (controller.titleController.text.isEmpty ||
        controller.contentController.text.isEmpty) return;
    var note = Note(
      id: UniqueKey().toString(),
      title: controller.titleController.text,
      content: controller.contentController.text,
      createdAt: DateTime.now(),
    );
    controller.titleController.text = '';
    controller.contentController.text = '';
    controller.addNote(note);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        title: const Text('Add Note'),
        centerTitle: true,
        elevation: 0,
      ),
      body: Column(
        children: [
          Container(
            margin: const EdgeInsets.only(
              top: 40,
              left: 20,
              right: 20,
            ),
            child: Column(
              children: [
                const Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    'Add your task',
                    style: TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.w900,
                    ),
                  ),
                ),
                const SizedBox(height: 10),
                CustomTextFormField(
                  padding: const EdgeInsets.symmetric(horizontal: 25),
                  borderRadius: BorderRadius.circular(25),
                  controller: controller.titleController,
                  height: 50.0,
                  hintText: 'Enter note title',
                  nextFocus: controller.contentFocus,
                ),
                CustomTextFormField(
                  padding: const EdgeInsets.fromLTRB(25, 10, 10, 10),
                  focus: controller.contentFocus,
                  borderRadius: BorderRadius.circular(10),
                  controller: controller.contentController,
                  height: 100.0,
                  hintText: 'Enter description',
                  maxLines: 10,
                ),
              ],
            ),
          ),
          const SizedBox(height: 10),
          CustomButton(
            title: 'Submit',
            icon: Icons.done,
            onPressed: addNote,
          ),
          const SizedBox(height: 10),
        ],
      ),
    );
  }
}

class CustomButton extends StatelessWidget {
  const CustomButton({
    Key? key,
    required this.onPressed,
    required this.title,
    required this.icon,
    this.height = 40.0,
    this.color,
  }) : super(key: key);
  final VoidCallback onPressed;
  final String title;
  final IconData icon;
  final double height;
  final Color? color;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 30),
      child: Row(
        children: [
          Expanded(
            child: Container(
              height: height,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(25),
                color: color ?? Theme.of(context).primaryColor,
              ),
              child: TextButton.icon(
                onPressed: onPressed,
                icon: Icon(
                  icon,
                  color: Colors.white,
                ),
                label: Text(
                  title,
                  style: const TextStyle(
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class CustomTextFormField extends StatelessWidget {
  const CustomTextFormField({
    Key? key,
    required this.controller,
    required this.height,
    required this.hintText,
    this.borderRadius,
    this.nextFocus,
    this.focus,
    this.maxLines,
    this.padding,
  }) : super(key: key);

  final TextEditingController controller;
  final String hintText;
  final double height;
  final BorderRadius? borderRadius;
  final FocusNode? nextFocus;
  final FocusNode? focus;
  final int? maxLines;
  final EdgeInsets? padding;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      margin: const EdgeInsets.symmetric(vertical: 10),
      padding: padding,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: borderRadius,
      ),
      child: TextFormField(
        autofocus: true,
        focusNode: focus,
        maxLines: maxLines,
        decoration: InputDecoration(
          hintText: hintText,
          border: InputBorder.none,
        ),
        controller: controller,
        onEditingComplete: () {
          nextFocus?.requestFocus();
        },
      ),
    );
  }
}

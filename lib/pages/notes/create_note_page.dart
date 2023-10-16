import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:everwrite/controllers/notes/note_editor_controller.dart';
import 'package:everwrite/data/models/note.dart';
import 'package:image_picker/image_picker.dart';
import 'dart:io';

class AddNotePage extends StatefulWidget {
  const AddNotePage({super.key});

  @override
  State<AddNotePage> createState() => _AddNotePageState();
}

class _AddNotePageState extends State<AddNotePage> {
  final controller = Get.put(NoteEditorController());

  void addNote() {
    if (controller.titleController.text.isEmpty ||
        controller.contentController.text.isEmpty) return;
    var note = Note(
      id: UniqueKey().toString(),
      title: controller.titleController.text,
      content: controller.contentController.text,
      imagePath: controller.selectedImagePath.value != ''
          ? controller.selectedImagePath.value
          : null,
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
                InkWell(
                  onTap: () => showModalBottomSheet(
                    context: context,
                    builder: (context) {
                      return Row(
                        children: [
                          InkWell(
                            child: const Icon(Icons.browse_gallery),
                            onTap: () =>
                                controller.pickImage(ImageSource.gallery),
                          ),
                          InkWell(
                            child: const Icon(Icons.camera),
                            onTap: () =>
                                controller.pickImage(ImageSource.camera),
                          ),
                        ],
                      );
                    },
                  ),
                  child: Container(
                    margin: const EdgeInsets.all(20),
                    width: 350,
                    height: 250,
                    child: DottedBorder(
                      borderType: BorderType.RRect,
                      radius: const Radius.circular(12),
                      color: Colors.blueGrey,
                      strokeWidth: 1,
                      dashPattern: const [5, 5],
                      child: SizedBox.expand(
                        child: FittedBox(
                          child: controller.selectedImagePath.value != ''
                              ? Image.file(
                                  File(controller.selectedImagePath.value),
                                  fit: BoxFit.cover,
                                )
                              : const Icon(
                                  Icons.image_outlined,
                                  color: Colors.blueGrey,
                                ),
                        ),
                      ),
                    ),
                  ),
                ),
                CustomTextFormField(
                  padding: const EdgeInsets.symmetric(horizontal: 25),
                  borderRadius: BorderRadius.circular(25),
                  controller: controller.titleController,
                  height: 50.0,
                  hintText: 'Title',
                  nextFocus: controller.contentFocus,
                ),
                CustomTextFormField(
                  padding: const EdgeInsets.fromLTRB(25, 10, 10, 10),
                  focus: controller.contentFocus,
                  borderRadius: BorderRadius.circular(10),
                  controller: controller.contentController,
                  height: 100.0,
                  hintText: 'What do you want to note?',
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

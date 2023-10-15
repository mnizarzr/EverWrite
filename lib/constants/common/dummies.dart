import 'package:everwrite/data/models/note_type.dart';
import 'package:everwrite/ui/app_ui.dart';
import 'package:flutter/material.dart';

const List<NoteType> noteTypes = [
  NoteType(
    title: 'Interesting Idea',
    subtitle: 'Use free text area, feel free to write it all',
    icon: 'assets/icons/interesting.png',
    colors: [AppColors.primary, AppColors.secondary],
  ),
  NoteType(
    title: 'Goals',
    subtitle: 'Near/Future goals, notes and keep focus.',
    icon: 'assets/icons/goals.png',
    colors: [AppColors.yellow, AppColors.darkYellow],
  ),
  NoteType(
    title: 'Guidance',
    subtitle: 'Create guidance for routine activities.',
    icon: 'assets/icons/guidance.png',
    colors: [AppColors.red, AppColors.darkRed],
  ),
  NoteType(
    title: 'Buy Something',
    subtitle: 'Use checklist, so you won’t miss anything.',
    icon: 'assets/icons/buy.png',
    colors: [AppColors.green, AppColors.darkGreen],
  ),
  NoteType(
    title: 'Routine Tasks',
    subtitle: 'Checklist with sub-checklist',
    icon: 'assets/icons/routine.png',
    colors: [AppColors.lemon, AppColors.darkLemon],
  ),
  NoteType(
    title: 'Image',
    subtitle: 'Remind what to-do with the image',
    icon: 'assets/icons/image.png',
    colors: [Colors.cyanAccent, Colors.cyan],
  ),
];

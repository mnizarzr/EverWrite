import 'package:everwrite/pages/notes/create_note_page.dart';
import 'package:get/get.dart';

import 'bindings/bindings.dart';
import '../pages/pages.dart';

import 'package:everwrite/constants/common/route_constants.dart';

class Routes {
  static const home = homeRoute;
  static const newNote = newNoteRoute;

  static const noteEditor = noteEditorRoute;

  // place logic here for determining initial route
  // eg. static String get initialRoute => isAuthenticated ? home : login;
  static String get initialRoute => home;

  static List<GetPage> routes = [
    // page with binding
    GetPage(
      name: Routes.home,
      page: () => const HomePage(),
      binding: HomeBinding(),
    ),
    // basic page without any binding
    GetPage(
      name: Routes.newNote,
      page: () => const NewNotePage(),
    ),
    GetPage(
      name: Routes.noteEditor,
      page: () => AddNotePage(),
    ),
  ];
}

import 'package:everwrite/pages/new_notes.dart';
import 'package:flutter/material.dart';

import 'package:everwrite/pages/home.dart';

import 'package:google_fonts/google_fonts.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'EverWrite',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: const Color.fromARGB(255, 106, 62, 161),
          onPrimary: const Color.fromARGB(255, 106, 62, 161),
          brightness: Brightness.light,
        ),
        fontFamily: GoogleFonts.inter().fontFamily,
        useMaterial3: true,
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => const HomePage(),
        '/newnote': (context) => const NewNote(),
      },
    );
  }
}

import 'package:everwrite/constants/common/dummies.dart';
import 'package:everwrite/constants/common/route_constants.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../components/notes/note_type_card.dart';

class NewNotePage extends StatelessWidget {
  const NewNotePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('New Notes'),
      ),
      body: Container(
        padding: const EdgeInsets.symmetric(horizontal: 16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 32.0),
              child: Text(
                'What Do You Want to Notes?',
                textAlign: TextAlign.left,
                style: Theme.of(context)
                    .textTheme
                    .titleLarge
                    ?.copyWith(fontWeight: FontWeight.bold),
              ),
            ),
            Expanded(
              child: GridView.builder(
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  mainAxisSpacing: 16,
                  crossAxisSpacing: 16,
                ),
                itemCount: noteTypes.length,
                itemBuilder: (context, index) => NoteTypeCard(
                  icon: AssetImage(noteTypes[index].icon),
                  title: noteTypes[index].title,
                  subtitle: noteTypes[index].subtitle,
                  colors: noteTypes[index].colors,
                  onTap:
                      (index == 5) ? () => Get.toNamed(noteEditorRoute) : null,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:heroicons/heroicons.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: <Widget>[
            const Image(
              image: AssetImage('assets/images/pinned_notes.png'),
              width: 260,
              height: 260,
            ),
            Container(
              margin: const EdgeInsets.symmetric(vertical: 16),
              child: Text(
                'Start Your Journey',
                style: Theme.of(context)
                    .textTheme
                    .headlineMedium
                    ?.copyWith(fontWeight: FontWeight.bold),
              ),
            ),
            const Text(
              'Every big step start with small step.\nNotes your idea and start\nyour journey.',
              textAlign: TextAlign.center,
            ),
            Container(
              margin: const EdgeInsets.symmetric(vertical: 24.0),
              height: 140,
              child: const Stack(
                children: [
                  Positioned(
                    bottom: 0,
                    right: 120,
                    child: Image(
                      image: AssetImage('assets/images/arrow.png'),
                      height: 120,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.pushNamed(context, '/newnote');
        },
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(50)),
        child: Container(
          width: 60,
          height: 60,
          decoration: const BoxDecoration(
            shape: BoxShape.circle,
            gradient: LinearGradient(
              begin: Alignment(0.0, -1.0),
              end: Alignment(0.0, 2.0),
              colors: [
                Color.fromARGB(255, 106, 62, 161),
                Color.fromARGB(255, 58, 34, 88),
              ],
            ),
          ),
          child: const HeroIcon(
            HeroIcons.plus,
            size: 36.0,
            color: Colors.white,
          ),
        ),
      ),
      bottomNavigationBar: buildBottomAppBar(context),
    );
  }

  BottomAppBar buildBottomAppBar(BuildContext context) {
    return BottomAppBar(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        mainAxisSize: MainAxisSize.max,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 10.0),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                HeroIcon(
                  HeroIcons.home,
                  color: Theme.of(context).primaryColor,
                  style: HeroIconStyle.solid,
                ),
                Text(
                  'Home',
                  style: TextStyle(color: Theme.of(context).primaryColor),
                ),
              ],
            ),
          ),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 10.0),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                HeroIcon(HeroIcons.clipboardDocumentCheck),
                Text('Finished'),
              ],
            ),
          ),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 10.0),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                HeroIcon(HeroIcons.magnifyingGlass),
                Text('Search'),
              ],
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(right: 10.0),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                HeroIcon(HeroIcons.cog6Tooth),
                Text('Settings'),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

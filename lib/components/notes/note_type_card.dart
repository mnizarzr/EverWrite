import 'package:everwrite/ui/colors.dart';
import 'package:flutter/material.dart';

class NoteTypeCard extends StatelessWidget {
  final AssetImage icon;
  final String title;
  final String subtitle;
  final List<Color>? colors;

  const NoteTypeCard({
    super.key,
    required this.icon,
    required this.title,
    required this.subtitle,
    this.colors,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.width / 2,
      decoration: BoxDecoration(
        borderRadius: const BorderRadius.all(Radius.circular(8)),
        gradient: LinearGradient(
          begin: const Alignment(0.0, -1.0),
          end: const Alignment(0.0, 1.0),
          colors: colors ?? const [AppColors.primary, AppColors.secondary],
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              flex: 1,
              child: Image(
                image: icon,
                height: 56,
                width: 56,
              ),
            ),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: Theme.of(context).textTheme.titleMedium?.copyWith(
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                  ),
                  Expanded(
                    child: Align(
                      alignment: Alignment.bottomLeft,
                      child: Text(
                        subtitle,
                        style: Theme.of(context).textTheme.bodySmall?.copyWith(
                              color: Colors.white,
                              fontSize: 12,
                            ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';

class AppoinmentPreviewCard extends StatelessWidget {
  const AppoinmentPreviewCard({super.key});

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    final colorScheme = Theme.of(context).colorScheme;
    return Column(
      children: [
        Container(
          padding: const EdgeInsets.all(16),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8),
              gradient: LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  colors: [colorScheme.primary, colorScheme.tertiary])),
          child: Column(
            children: [
              SizedBox(
                height: 100,
                child: Center(
                    child: Text(
                  'No appoinment Yet',
                  style: textTheme.bodyMedium?.copyWith(
                      color: Colors.white, fontWeight: FontWeight.bold),
                )),
              )
            ],
          ),
        ),
        Container(
          height: 8,
          margin: const EdgeInsets.symmetric(horizontal: 12.0),
          decoration: BoxDecoration(
              color: colorScheme.primary.withOpacity(0.25),
              borderRadius:
                  const BorderRadius.vertical(bottom: Radius.circular(8))),
        ),
        Container(
          height: 8,
          margin: const EdgeInsets.symmetric(horizontal: 24.0),
          decoration: BoxDecoration(
              color: colorScheme.primary.withOpacity(0.15),
              borderRadius:
                  const BorderRadius.vertical(bottom: Radius.circular(8))),
        )
      ],
    );
  }
}

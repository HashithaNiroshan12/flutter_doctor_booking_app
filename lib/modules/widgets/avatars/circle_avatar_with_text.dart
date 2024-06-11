import 'package:flutter/material.dart';

class CircleAvatarWithTextLabel extends StatelessWidget {
  const CircleAvatarWithTextLabel({super.key,
  required this.icon,
  required this.label,
  this.onTap});

  final IconData icon;
  final String label;
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {

    final colorSchema = Theme.of(context).colorScheme;
    return  Column(
      children: [
        CircleAvatar(
          radius: 24,
          backgroundColor: colorSchema.primary,
          foregroundColor: colorSchema.onPrimary,
          child: Icon(icon),
        ),
        const SizedBox(height: 8,),
        Text(
          label,
          maxLines: 1,
          overflow: TextOverflow.ellipsis,
          style: Theme.of(context).textTheme.bodySmall?.copyWith(
            // color: colorSchema.secondary
          ),
        )
      ],
    );
  }
}
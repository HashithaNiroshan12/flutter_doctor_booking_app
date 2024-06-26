import 'package:flutter/material.dart';
import 'package:models/models.dart';

class DoctorListTile extends StatelessWidget {
  const DoctorListTile({super.key, required this.doctor});

  final Doctor doctor;

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    final colorTheme = Theme.of(context).colorScheme;

    return ListTile(
      onTap: () {},
      contentPadding: EdgeInsets.zero,
      leading: CircleAvatar(
        radius: 24,
        backgroundImage: NetworkImage(doctor.profileImageUrl),
      ),
      title: Text(
        doctor.name,
        style: textTheme.bodyLarge?.copyWith(fontWeight: FontWeight.bold),
      ),
      subtitle: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: 4,
          ),
          Text(
            doctor.category.name,
            style: textTheme.bodyMedium?.copyWith(color: colorTheme.secondary),
          ),
          const SizedBox(
            height: 8,
          ),
          Row(
            children: [
              Icon(
                Icons.star,
                color: Colors.orange[200],
                size: 16,
              ),
              const SizedBox(
                width: 4,
              ),
              Text(
                doctor.rating.toString(),
                style: textTheme.bodySmall?.copyWith(
                    color: colorTheme.onBackground.withOpacity(0.5),
                    fontWeight: FontWeight.bold),
              ),
              const SizedBox(
                width: 16,
              ),
              Icon(
                Icons.work,
                color: colorTheme.tertiary,
                size: 16,
              ),
              const SizedBox(
                width: 4,
              ),
              Text(
                '3 years',
                style: textTheme.bodySmall?.copyWith(
                    color: colorTheme.onBackground.withOpacity(0.5),
                    fontWeight: FontWeight.bold),
              ),
            ],
          )
        ],
      ),
      trailing: FilledButton(onPressed: () {}, child: const Text('Book Now')),
    );
  }
}

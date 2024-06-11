import 'package:doctor_booking_app/modules/widgets/avatars/circle_avatar_with_text.dart';
import 'package:doctor_booking_app/modules/widgets/titles/section_title.dart';
import 'package:flutter/material.dart';
import 'package:models/models.dart';

class HomScreen extends StatelessWidget {
  const HomScreen({super.key});

  @override
  Widget build(BuildContext context) {
    //create a bloc and prive it ito the HomeView
    return const HomeView();
  }
}

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    //create the HomeView
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.grey[200],
        toolbarHeight: 80,
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Welcome',
              style: Theme.of(context).textTheme.titleSmall,
            ),
            const SizedBox(
              height: 4,
            ),
            Text(
              'Massimo D',
              style: Theme.of(context)
                  .textTheme
                  .titleSmall
                  ?.copyWith(fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 4),
            Row(
              children: [
                const Icon(
                  Icons.location_on,
                  color: Color(0xff9c254d),
                  size: 20,
                ),
                const SizedBox(width: 4.0),
                Text(
                  'USA, DUBAI',
                  style: Theme.of(context)
                      .textTheme
                      .bodySmall
                      ?.copyWith(color: Color(0xff9c254d)),
                ),
                const SizedBox(width: 4.0),
                const Icon(Icons.expand_more, color: Color(0xff9c254d)),
              ],
            ),
          ],
        ),
        actions: [
          IconButton(
              onPressed: () {}, icon: const Icon(Icons.notifications_outlined))
        ],
        bottom: PreferredSize(
          preferredSize: const Size.fromHeight(64),
          child: Padding(
            padding: const EdgeInsets.all(8),
            child: TextField(
              decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(5.0),
                ),
                filled: true,
                hintText: 'Search for doctors...',
                prefixIcon: const Icon(Icons.search),
                suffixIcon: Container(
                  margin: EdgeInsets.all(4.0),
                  padding: EdgeInsets.all(8.0),
                  decoration: BoxDecoration(
                      color: Colors.black,
                      borderRadius: BorderRadius.circular(8)),
                  child:
                      const Icon(Icons.filter_alt_outlined, color: Colors.grey),
                ),
                fillColor: Colors.white,
              ),
            ),
          ),
        ),
      ),
      body: const SingleChildScrollView(
        padding: EdgeInsets.all(8),
        child: Column(
          children: [_DoctorCatogories()],
        ),
      ),
    );
  }
}

class _DoctorCatogories extends StatelessWidget {
  const _DoctorCatogories({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SectionTitle(
          title: 'Categories',
          action: 'See all',
          onPressed: () {},
        ),
        Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: DoctorCategory.values
                .take(5)
                .map((category) => Expanded(
                      child: CircleAvatarWithTextLabel(
                          icon: category.icon, label: category.name),
                    ))
                .toList())
      ],
    );
  }
}

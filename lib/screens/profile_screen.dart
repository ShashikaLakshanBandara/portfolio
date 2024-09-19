import 'package:flutter/material.dart';
import 'package:portfolio/Widgets/projects_counts.dart';
import 'package:portfolio/Widgets/stack_card.dart';
import 'package:portfolio/colors/app_colors.dart';
import 'package:transparent_image/transparent_image.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    double? cardWidth = (width <= 770) ? null : (width - 200) / 2;
    double spaceBetweenCards = 16;

    List<Widget> children = [
      SizedBox(
        width: cardWidth,
        child: Column(
          children: [
            Container(
              width: 100,
              height: 100,
              decoration: const BoxDecoration(shape: BoxShape.circle),
              child: ClipOval(
                child: FadeInImage(
                    placeholder: MemoryImage(kTransparentImage),
                    image:
                        const AssetImage('assets/images/profile_picture.jpeg')),
              ),
            ),
            const SizedBox(
              height: 8,
            ),
            Text(
              "Shashika Lakshan",
              textAlign: TextAlign.center,
              style: Theme.of(context).textTheme.titleLarge!.copyWith(
                    fontWeight: FontWeight.bold,
                    color: tabIconColors,
                  ),
            ),
            SizedBox(
              height: spaceBetweenCards,
            ),
            const StackCard(),
            SizedBox(
              height: spaceBetweenCards,
            ),
            Card(
              color: cardBg,
              child: Padding(
                padding: const EdgeInsets.all(8),
                child: Text(
                    style: Theme.of(context)
                        .textTheme
                        .bodyMedium!
                        .copyWith(color: tabIconColors),
                    textAlign: TextAlign.justify,
                    "Driven student passionate about translating technical knowledge into innovative software solutions. Eager to leverage strong problem-solving skills and a growth mindset to contribute to a collaborative development team."),
              ),
            )
          ],
        ),
      ),
      SizedBox(
        height: spaceBetweenCards,
      ),
      SizedBox(
        height: (width >= 770) ? height : null,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Card(
              color: cardBg,
              child: SizedBox(
                width: cardWidth,
                child: Padding(
                  padding:
                      const EdgeInsets.symmetric(vertical: 16, horizontal: 8),
                  child: Column(
                    children: [
                      Text("Total Projects",
                          style: Theme.of(context).textTheme.bodyLarge),
                      const SizedBox(
                        height: 16,
                      ),
                      const ProjectsCounts()
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      )
    ];

    return Container(
      padding: const EdgeInsets.all(16),
      color: background,
      width: double.infinity,
      height: double.infinity,
      child: SingleChildScrollView(
        child: (width <= 770)
            ? SingleChildScrollView(
                child: Column(children: children),
              )
            : Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: children,
              ),
      ),
    );
  }
}

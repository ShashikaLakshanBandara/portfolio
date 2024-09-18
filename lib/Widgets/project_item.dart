import 'package:flutter/material.dart';
import 'package:portfolio/colors/app_colors.dart';
import 'package:portfolio/model/project.dart';

class ProjectItem extends StatelessWidget {
  const ProjectItem({super.key, required this.project});

  final Project project;

  @override
  Widget build(BuildContext context) {
    return Card(
      color: cardBg,
      clipBehavior: Clip.hardEdge,
      child: Container(
        width: double.infinity,
        height: double.infinity,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Hero(
              tag: project.title,
              child: Image.asset(
                  "assets/images/projects/${project.projectFolder}/${project.imagesLocations[0]}"),
            ),
            const SizedBox(
              height: 8,
            ),
            Padding(
              padding: const EdgeInsets.all(4.0),
              child: Text(
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
                project.title,
                style: Theme.of(context).textTheme.bodyLarge,
              ),
            ),
            const SizedBox(
              height: 4,
            ),
            Row(
              children: [
                ...project.technologyIcons.map(
                  (icon) => Padding(
                    padding: const EdgeInsets.only(left: 8.0),
                    child: Image.asset(
                      "assets/images/skills/$icon",
                      width: 25,
                      height: 25,
                    ),
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}

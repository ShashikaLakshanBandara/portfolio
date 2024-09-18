import 'package:flutter/material.dart';
import 'package:portfolio/colors/app_colors.dart';
import 'package:portfolio/model/course.dart';

class CourseCard extends StatelessWidget {
  const CourseCard({super.key, required this.course});

  final Course course;

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.all(16),
      color: cardBg,
      clipBehavior: Clip.hardEdge,
      child: SizedBox(
        height: 120,
        child: Row(
          children: [
            Image.asset(
              course.imageLocation,
              fit: BoxFit.cover,
              height: double.infinity,
              width: 140,
            ),
            const SizedBox(
              width: 16,
            ),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  const SizedBox(
                    height: 8,
                  ),
                  Text(
                    course.title,
                    maxLines: 2,
                    style: Theme.of(context).textTheme.bodyLarge,
                  ),
                  Text(
                    course.from,
                    overflow: TextOverflow.ellipsis,
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

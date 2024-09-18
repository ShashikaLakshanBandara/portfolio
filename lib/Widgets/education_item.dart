import 'package:flutter/material.dart';
import 'package:portfolio/colors/app_colors.dart';
import 'package:portfolio/model/Education.dart';

class EducationItem extends StatelessWidget {
  const EducationItem(
      {super.key, required this.education, required this.onTapItem});

  final Education education;
  final Function(BuildContext, Education) onTapItem;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        onTapItem(context, education);
      },
      child: Card(
        margin: const EdgeInsets.all(16),
        color: cardBg,
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Row(
            children: [
              Image.asset(
                "assets/images/robot.png",
                width: 150,
                height: 150,
              ),
              Expanded(
                child: Container(
                  height: 150,
                  child: Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Text(
                            maxLines: 2,
                            education.title,
                            style: Theme.of(context)
                                .textTheme
                                .bodyLarge!
                                .copyWith(overflow: TextOverflow.ellipsis)),
                        Text(
                          maxLines: 2,
                          education.institute,
                          style: Theme.of(context)
                              .textTheme
                              .bodyMedium!
                              .copyWith(overflow: TextOverflow.ellipsis),
                        ),
                        Text(
                          education.duration,
                          style: Theme.of(context).textTheme.bodyMedium,
                        ),
                      ],
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

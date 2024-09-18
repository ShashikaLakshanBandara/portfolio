import 'package:flutter/material.dart';
import 'package:portfolio/Widgets/skill_item.dart';
import 'package:portfolio/colors/app_colors.dart';
import 'package:portfolio/model/skill.dart';

class SkillCard extends StatelessWidget {
  const SkillCard({super.key, required this.skill});

  final Skill skill;

  @override
  Widget build(BuildContext context) {
    final ScrollController _scrollController = ScrollController();

    return Card(
      margin: const EdgeInsets.all(16),
      color: cardBg,

      child: Container(
        alignment: Alignment.centerLeft,
        width: double.infinity,

        child: Padding(
          padding: const EdgeInsets.all(16.0),

          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,

            children: [
              Text(
                skill.skillName,
                style: Theme.of(context).textTheme.bodyLarge,
              ),
              const SizedBox(
                height: 10,
              ),

              GestureDetector(
                onHorizontalDragUpdate: (detail) {
                  _scrollController.jumpTo(
                    _scrollController.position.pixels - detail.delta.dx,
                  );
                },
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  controller: _scrollController,
                  physics: const ScrollPhysics(parent: BouncingScrollPhysics()),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      ...skill.skillItems.map((skillItem) => SkillItem(
                          name: skillItem.skillName,
                          imageLocation: skillItem.imageLocation))
                    ],
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

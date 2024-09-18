import 'package:flutter/material.dart';
import 'package:portfolio/colors/app_colors.dart';

class SkillItem extends StatelessWidget {
  const SkillItem({super.key, required this.name, required this.imageLocation});

  final String name;
  final String imageLocation;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(8),
      width: 140,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(  // Image container
            padding: const EdgeInsets.all(16),
            decoration: BoxDecoration(
              color: cardBg,
              border: Border.all(
                color: tabIconColors,
                width: 0.5,
              ),
              borderRadius: BorderRadius.circular(10)
            ),
            child: Image.asset(
              "assets/images/skills/$imageLocation",
              width: 70,
              height: 70,
            ),
          ),
          const SizedBox(
            height: 8,
          ),
          Text(
            name,
            textAlign: TextAlign.center,
          )
        ],
      ),
    );
  }
}

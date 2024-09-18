import 'package:flutter/material.dart';
import 'package:portfolio/Widgets/skill_card.dart';
import 'package:portfolio/colors/app_colors.dart';
import 'package:portfolio/data/skills_data.dart';

class SkillsScreen extends StatelessWidget {
  const SkillsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      color: background,
      child: SingleChildScrollView(
        child: Column(
          children: [
            ...skillsData.map((skill)=>
              SkillCard(skill: skill)
            )
          ],
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:portfolio/Widgets/projects_counts_item.dart';

class ProjectsCounts extends StatelessWidget {
  const ProjectsCounts({super.key});

  @override
  Widget build(BuildContext context) {
    Size screenSize = MediaQuery.of(context).size;

    List<Widget> children = [
      const ProjectsCountsItem(number: "3", name: "Native Android"),
      const ProjectsCountsItem(number: "2", name: "Flutter"),
      const ProjectsCountsItem(number: "1", name: ".Net Standalone"),
    ];

    Widget content;

    if (screenSize.width >= 370 && screenSize.width <= 770) {
      content = Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: children);
    } else if (screenSize.width <= 925) {
      content = Column(
        children: children,
      );
    } else {
      content = Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: children);
    }
    return content;
  }
}

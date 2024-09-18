import 'package:flutter/material.dart';
import 'package:portfolio/Widgets/projects_counts_item.dart';

class ProjectsCounts extends StatelessWidget {
  const ProjectsCounts({super.key});

  @override
  Widget build(BuildContext context) {
    Size screenSize = MediaQuery.of(context).size;

    List<Widget> children = [
      ProjectsCountsItem(number: "4", name: "Native Android"),
      ProjectsCountsItem(number: "4", name: "Flutter"),
      ProjectsCountsItem(number: "4", name: ".Net Standalone"),
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

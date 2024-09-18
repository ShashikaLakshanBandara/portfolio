import 'package:flutter/material.dart';

class ProjectsCountsItem extends StatelessWidget {
  const ProjectsCountsItem({
    super.key,
    required this.number,
    required this.name,
  });

  final String number;
  final String name;

  @override
  Widget build(BuildContext context) {
    return  Column(
      children: [Text("0$number",style: Theme.of(context).textTheme.titleMedium,), Text(name)],
    );
  }
}

import 'package:flutter/material.dart';
import 'package:portfolio/Widgets/project_item.dart';
import 'package:portfolio/colors/app_colors.dart';
import 'package:portfolio/data/projects_data.dart';
import 'package:portfolio/model/project.dart';
import 'package:portfolio/screens/project_details_screen.dart';

class ProjectScreen extends StatelessWidget {
  ProjectScreen({super.key});

  final List<Project> projectList = allProjects;

  void _openProjectDetails(BuildContext context, Project project) {
    Navigator.of(context).push(MaterialPageRoute(
        builder: (ctx) => ProjectDetailsScreen(project: project)));
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: background,
      width: double.infinity,
      height: double.infinity,
      child: GridView.builder(
        padding: const EdgeInsets.all(16),
        gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
            maxCrossAxisExtent: 300,
            mainAxisSpacing: 8,
            crossAxisSpacing: 8,
            childAspectRatio: 1),
        itemCount: projectList.length,
        itemBuilder: (context, index) {
          return GestureDetector(
            onTap: () {
              _openProjectDetails(context, projectList[index]);
            },
            child: GridTile(
              child: Container(
                child: ProjectItem(project: projectList[index]),
              ),
            ),
          );
        },
      ),
    );
  }
}

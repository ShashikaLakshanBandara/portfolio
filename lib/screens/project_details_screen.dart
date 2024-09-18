import 'package:flutter/material.dart';
import 'package:portfolio/colors/app_colors.dart';
import 'package:portfolio/model/project.dart';
import 'package:url_launcher/url_launcher.dart';

class ProjectDetailsScreen extends StatelessWidget {
  const ProjectDetailsScreen({
    super.key,
    required this.project,
  });

  void _openLink(String url) async {
    if (!await launchUrl(Uri.parse(url))) {
      print("Can't ope the Url");
    }
  }

  final Project project;

  @override
  Widget build(BuildContext context) {
    final Size screenSize = MediaQuery.of(context).size;

    return Scaffold(
      backgroundColor: background,
      appBar: AppBar(
        backgroundColor: darkColor,
        foregroundColor: tabIconColors,
        title: Text(
          project.title,
        ),
      ),
      body: SingleChildScrollView(
        child: SizedBox(
          width: double.infinity,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              ConstrainedBox(
                constraints: const BoxConstraints(
                  maxWidth: 500,
                ),
                child: Hero(
                  tag: project.title,
                  child: Image.asset(
                    "assets/images/projects/${project.projectFolder}/${project.imagesLocations[0]}",
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              const SizedBox(
                height: 16,
              ),
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Text(
                  project.description,
                  textAlign: TextAlign.justify,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 16),
                child: Row(
                  spacing: 8,
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
                ),
              ),
              const SizedBox(
                height: 25,
              ),
              ElevatedButton(
                onPressed: () {
                  _openLink(project.url);
                },
                child: const Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [Text("GitHub"), Icon(Icons.open_in_new)],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

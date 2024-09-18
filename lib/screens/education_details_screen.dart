import 'package:flutter/material.dart';
import 'package:portfolio/colors/app_colors.dart';
import 'package:portfolio/model/Education.dart';
import 'package:url_launcher/url_launcher.dart';

class EducationDetailsScreen extends StatelessWidget {
  const EducationDetailsScreen({super.key, required this.education});

  final Education education;

  Future<void> openUrl(String url) async {
    if (!await launchUrl(Uri.parse(url))) {
      print('Could not launch $url');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: background,
      appBar: AppBar(
        backgroundColor: darkColor,
        foregroundColor: tabIconColors,
        title: const Text("Education Details"),
      ),
      body: Container(
        height: double.infinity,
        child: SingleChildScrollView(
          child: SizedBox(
            width: double.infinity,
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  ConstrainedBox(
                    constraints: const BoxConstraints(
                      maxWidth: 500,
                    ),
                    child: Hero(
                      tag: education.title,
                      child: Image.asset(
                        "assets/images/robot.png",
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  SizedBox(
                    width: double.infinity,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          education.title,
                          style:
                              Theme.of(context).textTheme.titleLarge!.copyWith(
                                    color: tabIconColors,
                                  ),
                        ),
                        Text(
                          education.institute,
                          style: Theme.of(context)
                              .textTheme
                              .bodyLarge!
                              .copyWith(color: tabIconColors),
                        ),
                        Text(
                          education.duration,
                          style: Theme.of(context)
                              .textTheme
                              .bodyMedium!
                              .copyWith(color: tabIconColors),
                        ),
                        const SizedBox(
                          height: 16,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

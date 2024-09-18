import 'package:flutter/material.dart';
import 'package:portfolio/colors/app_colors.dart';
import 'package:portfolio/model/Education.dart';
import 'package:portfolio/model/course.dart';
import 'package:url_launcher/url_launcher.dart';

class CourseDetailsScreen extends StatelessWidget {
  const CourseDetailsScreen({super.key, required this.course});

  final Course course;

  void _openLink(String url) async {
    if (!await launchUrl(Uri.parse(url))) {
      print("Can't ope the Url");
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: darkColor,
        foregroundColor: tabIconColors,
        title: const Text(
          "Course Details",
        ),
      ),
      body: Container(
        height: double.infinity,
        color: background,
        child: SingleChildScrollView(
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
                    tag: course.title,
                    child: Image.asset(
                      course.imageLocation,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 16,
                ),
                ElevatedButton(
                  onPressed: () {
                    _openLink(course.link);
                  },
                  child: const Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [Text("View"), Icon(Icons.open_in_new)],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

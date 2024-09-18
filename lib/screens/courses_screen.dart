import 'package:flutter/material.dart';
import 'package:portfolio/Widgets/course_card.dart';
import 'package:portfolio/colors/app_colors.dart';
import 'package:portfolio/data/courses_data.dart';
import 'package:portfolio/model/course.dart';
import 'package:portfolio/screens/course_details_screen.dart';

class CoursesScreen extends StatelessWidget {
  const CoursesScreen({super.key});

  void _openEducationDetails(BuildContext context, Course course) {
    Navigator.of(context).push(
      MaterialPageRoute(
        builder: (ctx) => CourseDetailsScreen(course: course),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final Size screenSize = MediaQuery.of(context).size;
    return Container(
      width: double.infinity,
      height: double.infinity,
      color: background,
      child: (screenSize.width <= 600)
          ? Column(
              children: [
                ...courses.map((course) => CourseCard(course: course))
              ],
            )
          : GridView.builder(
              padding: const EdgeInsets.all(16),
              gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
                  mainAxisSpacing: 8,
                  crossAxisSpacing: 8,
                  childAspectRatio: 1,
                  maxCrossAxisExtent: 300,
                  mainAxisExtent: 300),
              itemCount: courses.length,
              itemBuilder: (context, index) {
                return Card(
                  color: cardBg,
                  child: GestureDetector(
                    onTap: () {
                      _openEducationDetails(context, courses[index]);
                    },
                    child: GridTile(
                        child: LayoutBuilder(
                      builder: (ctx, constraints) => Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(
                            width: constraints.maxWidth,
                            height: constraints.maxHeight * 0.4,
                            child: Hero(
                              tag: courses[index].title,
                              child: Image.asset(
                                courses[index].imageLocation,
                              ),
                            ),
                          ),
                          Text(
                            maxLines: 2,
                            overflow: TextOverflow.ellipsis,
                            courses[index].title,
                            style: Theme.of(context).textTheme.bodyLarge,
                          ),
                          Text(
                            courses[index].from,
                            maxLines: 2,
                            overflow: TextOverflow.ellipsis,
                          ),
                        ],
                      ),
                    )),
                  ),
                );
              },
            ),
    );
  }
}

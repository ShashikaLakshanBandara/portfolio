import 'package:flutter/material.dart';
import 'package:portfolio/Widgets/education_item.dart';
import 'package:portfolio/colors/app_colors.dart';
import 'package:portfolio/data/education_data.dart';
import 'package:portfolio/model/Education.dart';
import 'package:portfolio/screens/education_details_screen.dart';

class EducationScreen extends StatelessWidget {
  const EducationScreen({super.key});

  void _openEducationDetails(BuildContext context, Education education) {
    Navigator.of(context).push(MaterialPageRoute(
        builder: (ctx) => EducationDetailsScreen(education: education)));
  }

  @override
  Widget build(BuildContext context) {
    final Size screenSize = MediaQuery.of(context).size;

    return Container(
      color: background,
      child: (screenSize.width <= 600)
          ? Column(
              children: [
                ...educationList.map(
                  (e) => EducationItem(
                    education: e,
                    onTapItem: _openEducationDetails,
                  ),
                )
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
              itemCount: educationList.length,
              itemBuilder: (context, index) {
                return Card(
                  color: cardBg,
                  clipBehavior: Clip.hardEdge,
                  child: GestureDetector(
                    onTap: () {
                      _openEducationDetails(context, educationList[index]);
                    },
                    child: GridTile(
                        child: LayoutBuilder(
                      builder: (ctx, constraints) => Container(
                        padding: const EdgeInsets.all(8),
                        color: cardBg,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(
                              width: constraints.maxWidth,
                              height: constraints.maxHeight * 0.4,
                              child: Hero(
                                tag: educationList[index].title,
                                child: Image.asset(
                                  "assets/images/robot.png",
                                ),
                              ),
                            ),
                            Text(
                              maxLines: 2,
                              overflow: TextOverflow.ellipsis,
                              educationList[index].title,
                              style: Theme.of(context).textTheme.bodyLarge,
                            ),
                            Text(
                              educationList[index].institute,
                              maxLines: 2,
                              overflow: TextOverflow.ellipsis,
                            ),
                            Text(
                              educationList[index].duration,
                              maxLines: 2,
                              overflow: TextOverflow.ellipsis,
                            ),
                          ],
                        ),
                      ),
                    )),
                  ),
                );
              },
            ),
    );
  }
}

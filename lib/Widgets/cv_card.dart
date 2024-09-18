import 'package:flutter/material.dart';
import 'package:portfolio/colors/app_colors.dart';
import 'package:url_launcher/url_launcher.dart';

class CvCard extends StatelessWidget {
  const CvCard({super.key, required this.width, required this.height});

  final double width;
  final double height;

  Future<void> openUrl(String url) async {
    if (!await launchUrl(Uri.parse(url))) {
      print('Could not launch $url');
    }
  }

  @override
  Widget build(BuildContext context) {
    double? cardWidth = (width <= 600) ? double.infinity : width * 0.25;
    double? cardHeight = (width >= 600) ? height * 0.5 : height * 0.25;

    return SizedBox(
      height: cardHeight,
      width: cardWidth,
      child: Card(
        color: cardBg,
        child: Expanded(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Curriculum Vitae",
                style: Theme.of(context).textTheme.bodyLarge,
              ),
              SizedBox(
                height: cardHeight * 0.05,
              ),
              SizedBox(
                width: width * 0.1,
                height: height * 0.1,
                child: Image.asset(
                  "assets/images/CV.png",
                ),
              ),
              SizedBox(
                height: cardHeight * 0.025,
              ),
              ElevatedButton(
                onPressed: () {
                  openUrl("files/cv.pdf");
                },
                child: Text(
                  "DOWNLOAD",
                  style:
                      TextStyle(fontWeight: FontWeight.bold, color: darkColor),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:portfolio/Widgets/accounts_card.dart';
import 'package:portfolio/Widgets/contact_details_card.dart';
import 'package:portfolio/Widgets/cv_card.dart';
import 'package:portfolio/colors/app_colors.dart';

class ContactMeScreen extends StatelessWidget {
  const ContactMeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    void _closeContactScreen() {
      Navigator.pop(context);
    }

    final Size screenSize = MediaQuery.of(context).size;
    double screenHeight = screenSize.height;
    double screenWidth = screenSize.width;

    List<Widget> children = [
      ContactDetailsCard(
        width: screenWidth,
        height: screenHeight,
      ),
      AccountsCard(
        width: screenWidth,
        height: screenHeight,
      ),
      CvCard(
        width: screenWidth,
        height: screenHeight,
      )
    ];

    return Container(
      width: screenWidth,
      height: screenHeight,
      color: background,
      child: (screenSize.width <= 600)
          ? SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ...children,
                  SizedBox(
                    height: screenHeight * 0.2,
                  ),
                  IconButton.outlined(
                      onPressed: _closeContactScreen,
                      icon: const Icon(Icons.close_rounded))
                ],
              ),
            )
          : Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        children[0],
                        children[1],
                      ],
                    ),
                    children[2]
                  ],
                ),
                SizedBox(height: screenHeight * 0.2),
                IconButton.outlined(
                    onPressed: _closeContactScreen,
                    icon: Icon(
                      Icons.close_rounded,
                      color: tabIconColors,
                    ))
              ],
            ),
    );
  }
}

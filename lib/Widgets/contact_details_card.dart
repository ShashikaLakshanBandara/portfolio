import 'package:flutter/material.dart';
import 'package:portfolio/colors/app_colors.dart';

class ContactDetailsCard extends StatelessWidget {
  const ContactDetailsCard(
      {super.key, required this.width, required this.height});

  final double width;
  final double height;

  @override
  Widget build(BuildContext context) {
    double? cardWidth = (width <= 600) ? double.infinity : width * 0.25;
    double? cardHeight = (width >= 600) ? height * 0.25 : height * 0.25;

    return SizedBox(
      height: cardHeight,
      width: cardWidth,
      child: Card(
        color: cardBg,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      "Phone",
                      style: Theme.of(context).textTheme.bodyLarge,
                    ),
                    const SelectableText(
                      "0711663868",
                    ),
                    const SelectableText(
                      "0711663868",
                    ),
                  ],
                ),
              ),
              Expanded(
                child: Column(
                  children: [
                    Text(
                      "Email",
                      style: Theme.of(context).textTheme.bodyLarge,
                    ),
                    const SelectableText("ShashikalakshanBandara@gmail.com")
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

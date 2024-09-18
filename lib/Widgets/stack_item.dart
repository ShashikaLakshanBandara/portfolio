import 'package:flutter/material.dart';
import 'package:portfolio/colors/app_colors.dart';

class StackItem extends StatelessWidget {
  const StackItem({super.key, required this.imageLocation, required this.text,required this.constraints});

  final String imageLocation;
  final String text;
  final BoxConstraints constraints;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: constraints.maxWidth*0.4,
      child: Column(
        children: [
          Image.asset(
            imageLocation,
          ),
          Text(
            text,
            textAlign: TextAlign.center,
            style: Theme.of(context)
                .textTheme
                .bodyMedium!
                .copyWith(color: tabIconColors),
          )
        ],
      ),
    );
  }
}

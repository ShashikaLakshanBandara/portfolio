import 'package:flutter/material.dart';
import 'package:portfolio/Widgets/stack_item.dart';
import 'package:portfolio/colors/app_colors.dart';

class StackCard extends StatelessWidget {
  const StackCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      color: cardBg,
      child: Padding(
        padding: const EdgeInsets.all(8),
        child: LayoutBuilder(
          builder: (context, constraints) {
            return Column(
              children: [
                Text(
                  "Stacks",
                  style: Theme.of(context).textTheme.bodyLarge,
                ),
                const SizedBox(
                  height: 8,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    StackItem(
                        constraints: constraints,
                        imageLocation: "assets/images/mobile_development.png",
                        text: "Mobile Application Development"),
                    StackItem(
                        constraints: constraints,
                        imageLocation: "assets/images/ui_design.png",
                        text: "UI/UX Design"),
                  ],
                )
              ],
            );
          },
        ),
      ),
    );
  }
}

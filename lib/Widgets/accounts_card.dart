import 'package:flutter/material.dart';
import 'package:portfolio/colors/app_colors.dart';
import 'package:portfolio/data/accounts_data.dart';
import 'package:url_launcher/url_launcher.dart';

class AccountsCard extends StatelessWidget {
  const AccountsCard({super.key, required this.width, required this.height});

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
    double? cardHeight = (width >= 600) ? height * 0.25 : height * 0.25;

    return SizedBox(
      height: cardHeight,
      width: cardWidth,
      child: Card(
        color: cardBg,
        child: LayoutBuilder(
          builder: (context, constraints) {
            return Column(
              // Add Column here
              children: [
                Text(
                  "Accounts",
                  style: Theme.of(context).textTheme.bodyLarge,
                ),
                Expanded(
                  // Expanded is now properly inside a Column
                  child: GridView.builder(
                    padding: const EdgeInsets.all(8),
                    gridDelegate:
                        const SliverGridDelegateWithMaxCrossAxisExtent(
                      maxCrossAxisExtent: 50,
                      childAspectRatio: 1,
                      crossAxisSpacing: 16,
                      mainAxisSpacing: 8,
                    ),
                    itemCount: accountsData.length,
                    itemBuilder: (context, index) {
                      return MouseRegion(
                        cursor: SystemMouseCursors.click,
                        child: GestureDetector(
                          onTap: () {
                            openUrl(accountsData[index].link);
                          },
                          child: GridTile(
                            child: Container(
                              padding: const EdgeInsets.all(8),
                              decoration: BoxDecoration(
                                border: Border.all(
                                  width: 1,
                                  color: tabIconColors,
                                ),
                                borderRadius: BorderRadius.circular(10),
                              ),
                              width: 300,
                              height: 300,
                              child: Image.asset(
                                "assets/images/accounts/${accountsData[index].image}",
                              ),
                            ),
                          ),
                        ),
                      );
                    },
                  ),
                ),
              ],
            );
          },
        ),
      ),
    );
  }
}

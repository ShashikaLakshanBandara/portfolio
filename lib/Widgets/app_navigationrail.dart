import 'package:flutter/material.dart';
import 'package:portfolio/colors/app_colors.dart';

class AppNavigationRail extends StatelessWidget {
  const AppNavigationRail({
    super.key,
    required this.changeScreen,
    required this.selectedIndex,
    
  });

  final int selectedIndex;
  final void Function(int) changeScreen;


  @override
  Widget build(BuildContext context) {
    return NavigationRail(
      minWidth: 100,
      indicatorColor: black,
      backgroundColor: darkColor,
      labelType: NavigationRailLabelType.all,
      unselectedIconTheme: IconThemeData(color: tabIconColors),
      unselectedLabelTextStyle: TextStyle(
          color: tabIconColors
      ),
      selectedIconTheme: IconThemeData(color: white),
      selectedLabelTextStyle: const TextStyle(
          color: Colors.white,
          fontWeight: FontWeight.bold
      ),

      selectedIndex: selectedIndex,
      onDestinationSelected: changeScreen,
      destinations: const [
        NavigationRailDestination(
          icon: Icon(Icons.person_outline),
          selectedIcon: Icon(Icons.person),
          label: Text('Profile'),
        ),
        NavigationRailDestination(
          icon: Icon(Icons.school_outlined),
          selectedIcon: Icon(Icons.school),
          label: Text('Education'),
        ),
        NavigationRailDestination(
          icon: Icon(Icons.code),
          selectedIcon: Icon(Icons.code),
          label: Text('Skills'),
        ),
        NavigationRailDestination(
          icon: Icon(Icons.book_outlined),
          selectedIcon: Icon(Icons.book),
          label: Text('Courses'),
        ),
        NavigationRailDestination(
          icon: Icon(Icons.folder_outlined),
          selectedIcon: Icon(Icons.folder),
          label: Text('Projects'),
        ),
      ],
    );
  }
}

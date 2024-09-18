import 'package:flutter/material.dart';
import 'package:portfolio/colors/app_colors.dart';

class AppBottomNavigationBar extends StatelessWidget {
  const AppBottomNavigationBar({
    super.key,
    required this.changeScreen,
    required this.selectedIndex,
  });

  final int selectedIndex;
  final void Function(int) changeScreen;

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      currentIndex: selectedIndex,
      onTap: changeScreen,
      type: BottomNavigationBarType.fixed,
      selectedItemColor: white,
      unselectedItemColor: tabIconColors,
      backgroundColor: darkColor,
      items: [
        BottomNavigationBarItem(
            backgroundColor: tabIconColors,
            activeIcon: Icon(Icons.person, color: tabIconColors),
            icon: Icon(Icons.person_outline, color: tabIconColors),
            label: "Profile"),
        BottomNavigationBarItem(
            activeIcon: Icon(Icons.school, color: white),
            icon: Icon(Icons.school_outlined, color: tabIconColors),
            label: "Education"),
        BottomNavigationBarItem(
            icon: Icon(Icons.code, color: tabIconColors),
            label: "Skills"),
        BottomNavigationBarItem(
            activeIcon: Icon(Icons.book, color: tabIconColors),
            icon: Icon(Icons.book_outlined, color: tabIconColors),
            label: "Courses"),
        BottomNavigationBarItem(
            activeIcon: Icon(Icons.folder, color: tabIconColors),
            icon: Icon(Icons.folder_outlined, color: tabIconColors),
            label: "Projects"),
      ],
    );
  }
}

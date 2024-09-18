import 'package:flutter/material.dart';
import 'package:portfolio/Widgets/app_bottom_navigationbar.dart';
import 'package:portfolio/Widgets/app_navigationrail.dart';
import 'package:portfolio/colors/app_colors.dart';
import 'package:portfolio/screens/contact_me_screen.dart';
import 'package:portfolio/screens/courses_screen.dart';
import 'package:portfolio/screens/education_screen.dart';
import 'package:portfolio/screens/profile_screen.dart';
import 'package:portfolio/screens/project_screen.dart';
import 'package:portfolio/screens/skills_screen.dart';

class TabScreen extends StatefulWidget {
  const TabScreen({super.key});

  @override
  State<TabScreen> createState() => _TabScreenState();
}

class _TabScreenState extends State<TabScreen> {
  int _selectedIndex = 0;
  late Widget _activeScreen;

  void _openContactScreen() {
    showModalBottomSheet(
      sheetAnimationStyle: AnimationStyle(curve: Curves.bounceIn),
      constraints: const BoxConstraints(
        minWidth: double.infinity,
        minHeight: double.infinity,
      ),
      showDragHandle: false,
      useSafeArea: true,
      isScrollControlled: true,
      context: context,
      builder: (ctx) {
        return const ContactMeScreen();
      },
    );
  }

  void _changeScreen(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    Size screenSize = MediaQuery.of(context).size;

    Widget _getScreen(int index) {
      switch (index) {
        case 0:
          return const ProfileScreen(key: ValueKey(0));
        case 1:
          return const EducationScreen(key: ValueKey(1));
        case 2:
          return const SkillsScreen(key: ValueKey(2));
        case 3:
          return const CoursesScreen(key: ValueKey(3));
        case 4:
          return ProjectScreen(key: const ValueKey(4));
        default:
          return const ProfileScreen(key: ValueKey(0));
      }
    }

    return Scaffold(
      backgroundColor: background,
      body: Row(
        children: [
          if (screenSize.width > 600)
            AppNavigationRail(
                changeScreen: _changeScreen, selectedIndex: _selectedIndex),
          Expanded(
            child: AnimatedSwitcher(
              duration: const Duration(milliseconds: 1000),
              transitionBuilder: (Widget child, Animation<double> animation) {
                return SlideTransition(
                  position: Tween<Offset>(
                    begin: const Offset(1.0, 0.0),
                    end: Offset.zero,
                  ).animate(animation),
                  child: FadeTransition(
                    opacity: animation,
                    child: child,
                  ),
                );
              },
              child: _getScreen(_selectedIndex),
            ),
          ),
        ],
      ),
      bottomNavigationBar: (screenSize.width <= 600)
          ? AppBottomNavigationBar(
              changeScreen: _changeScreen,
              selectedIndex: _selectedIndex,
            )
          : null,
      floatingActionButton: FloatingActionButton(
        backgroundColor: darkColor,
        foregroundColor: tabIconColors,
        onPressed: _openContactScreen,
        child: const Icon(Icons.mail),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portfolio/colors/app_colors.dart';
import 'package:portfolio/screens/splash_screen.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(
    MaterialApp(
      theme: ThemeData(
        textTheme: TextTheme(
          titleLarge: GoogleFonts.jetBrainsMono(
            textStyle: const TextStyle(
              fontSize: 32,
              fontWeight: FontWeight.bold,
            ),
          ),
          titleMedium: GoogleFonts.jetBrainsMono(
            textStyle:
                const TextStyle(fontWeight: FontWeight.bold, fontSize: 24)
                    .copyWith(color: tabIconColors),
          ),
          bodyLarge: GoogleFonts.jetBrainsMono(
            textStyle:
                const TextStyle(fontWeight: FontWeight.bold, fontSize: 16)
                    .copyWith(color: tabIconColors),
          ),
          bodyMedium: GoogleFonts.jetBrainsMono(
            textStyle:
                const TextStyle(fontWeight: FontWeight.w100, fontSize: 14)
                    .copyWith(color: tabIconColors),
          ),
        ),
      ),
      home: const SplashScreen(),
    ),
  );
}

import 'package:flutter/material.dart';
import 'home.dart';
import 'login.dart';
import 'supplemental/cut_corners_border.dart';
import 'package:shrine/colors.dart' as colors;

class ShrineApp extends StatefulWidget {
  const ShrineApp({Key? key}) : super(key: key);

  @override
  ShrineAppState createState() => ShrineAppState();
}

class ShrineAppState extends State<ShrineApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Shrine',
      initialRoute: '/login',
      routes: {
        '/login': (BuildContext context) => const LoginPage(),
        '/': (BuildContext context) => const HomePage(),
      },
      theme: _buildShrineTheme(),
    );
  }
}

// Custom Shrine Text Theme
TextTheme _buildShrineTextTheme(TextTheme base) {
  return base.copyWith(
    headlineSmall: base.headlineSmall!.copyWith(
      fontWeight: FontWeight.w500,
    ),
    titleLarge: base.titleLarge!.copyWith(
      fontSize: 18.0,
    ),
    bodySmall: base.bodySmall!.copyWith(
      fontWeight: FontWeight.w400,
      fontSize: 14.0,
    ),
    bodyLarge: base.bodyLarge!.copyWith(
      fontWeight: FontWeight.w500,
      fontSize: 16.0,
    ),
  ).apply(
    fontFamily: 'Rubik', // Custom font
    displayColor: colors.kShrineBrown900, // Color for display text
    bodyColor: colors.kShrineBrown900, // Color for body text
  );
}

// Define Shrine Theme (original version)
ThemeData _buildShrineTheme() {
  final ThemeData base = ThemeData.light();
  return base.copyWith(
    colorScheme: base.colorScheme.copyWith(
      primary: colors.kShrinePurple,
      secondary: colors.kShrinePurple,
      error: colors.kShrineErrorRed,
    ),
    scaffoldBackgroundColor: colors.kShrineSurfaceWhite,
    textSelectionTheme: const TextSelectionThemeData(
      selectionColor: colors.kShrinePurple,
    ),
    appBarTheme: const AppBarTheme(
      foregroundColor: colors.kShrineBrown900,
      backgroundColor: colors.kShrinePink100,
    ),
    inputDecorationTheme: const InputDecorationTheme(
      border: CutCornersBorder(),
      focusedBorder: CutCornersBorder(
        borderSide: BorderSide(
          width: 2.0, 
          color: colors.kShrinePurple,
        ),
      ),
      floatingLabelStyle: TextStyle(
        color: colors.kShrinePurple,
      ),
    ),
  );
}

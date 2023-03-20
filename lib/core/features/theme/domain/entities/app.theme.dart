import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'app.colors.dart';

abstract class ThemeNames {
  static const String light = "light";
  static const String dark = "dark";
}


//region LightTheme
ThemeData _lightTheme = ThemeData.light().copyWith(
  splashColor: AppColors.light.primaryColor.withOpacity(0.5),
  primaryColorLight: AppColors.light.primaryColor,
  primaryColorDark: AppColors.dark.primaryColor,
  scaffoldBackgroundColor: AppColors.light.primaryBg,
  primaryColor: AppColors.light.primaryColor,
  cardColor: AppColors.light.cardColor,
  cardTheme: CardTheme(
    color: AppColors.light.cardColor,
  ),
  textTheme: GoogleFonts.poppinsTextTheme().copyWith(
    bodyText1: GoogleFonts.poppins(
      color: AppColors.light.bodyText,
      fontSize: 16,
    ),
    bodyText2: GoogleFonts.poppins(
      color: AppColors.light.primaryText,
    ),
    headline6: GoogleFonts.poppins(
      color: AppColors.light.bodyText,
      fontSize: 12,
      fontWeight: FontWeight.bold,
    ),
    //input text style
    subtitle1: GoogleFonts.poppins(
      color: AppColors.light.secondaryText,
    ),
  ),
  useMaterial3: true,
  appBarTheme: AppBarTheme(
    backgroundColor: AppColors.light.primaryBg,
    titleTextStyle: TextStyle(color: AppColors.light.primaryText, fontSize: 18.0),
  ),
  inputDecorationTheme: InputDecorationTheme(
    contentPadding: const EdgeInsets.symmetric(horizontal: 18),
    fillColor: AppColors.light.inputBg,
    filled: true,
    hintStyle: TextStyle(
      color: AppColors.light.primaryText,
      fontSize: 12.0,
    ),
    border: OutlineInputBorder(
      borderSide: BorderSide.none,
      borderRadius: BorderRadius.circular(40),
    ),
  ),
  sliderTheme: SliderThemeData(
    activeTrackColor: AppColors.light.primaryColor,
    inactiveTrackColor: AppColors.light.primaryColor.withOpacity(0.5),
    trackHeight: 4.0,
    thumbColor: AppColors.light.primaryColor,
    thumbShape: const RoundSliderThumbShape(enabledThumbRadius: 12.0),
    overlayColor: AppColors.light.primaryColor.withOpacity(0.5),
    overlayShape: const RoundSliderOverlayShape(overlayRadius: 28.0),
    valueIndicatorColor: AppColors.light.primaryColor,
    valueIndicatorShape: const PaddleSliderValueIndicatorShape(),
  ),
    elevatedButtonTheme: ElevatedButtonThemeData(
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.resolveWith((states) {
            // If the button is pressed, return green, otherwise blue
            if (states.contains(MaterialState.pressed) || states.contains(MaterialState.hovered)) {
              return AppColors.dark.primaryColor.withOpacity(0.6);
            }
            return AppColors.dark.primaryColor;
          }),
          textStyle: MaterialStateProperty.resolveWith((states) {
            // If the button is pressed, return size 40, otherwise 20
            if (states.contains(MaterialState.pressed)) {
              return const TextStyle(color: Colors.white);
            }
            return const TextStyle(color: Colors.white);
          }),
          shape: MaterialStateProperty.all<RoundedRectangleBorder>(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(8.0),
            ),
          ),
        )
    )
);
//endregion





//region DarkTheme
ThemeData _darkTheme = ThemeData.dark().copyWith(
  splashColor: AppColors.dark.primaryColor.withOpacity(0.5),
  primaryColorLight: AppColors.light.primaryColor,
  primaryColorDark: AppColors.dark.primaryColor,
  scaffoldBackgroundColor: AppColors.dark.primaryBg,
  primaryColor: AppColors.dark.primaryColor,
  cardColor: AppColors.dark.cardColor,
  cardTheme: CardTheme(
    color: AppColors.dark.cardColor,
  ),
  textTheme: GoogleFonts.poppinsTextTheme().copyWith(
    bodyText1: GoogleFonts.poppins(
      color: AppColors.dark.bodyText,
      fontSize: 16,
    ),
    bodyText2: GoogleFonts.poppins(
      color: AppColors.dark.secondaryText,
    ),
    headline6: GoogleFonts.poppins(
      color: AppColors.dark.bodyText,
      fontSize: 12,
      fontWeight: FontWeight.bold,
    ),
    //input text style
    subtitle1: GoogleFonts.poppins(
      color: AppColors.dark.primaryText,
    ),
  ),
  useMaterial3: true,
  appBarTheme: AppBarTheme(
    backgroundColor: AppColors.dark.primaryBg,
    titleTextStyle: TextStyle(color: AppColors.dark.primaryText, fontSize: 18.0),
  ),
  inputDecorationTheme: InputDecorationTheme(
    contentPadding: const EdgeInsets.symmetric(horizontal: 18),
    fillColor: AppColors.dark.inputBg,
    filled: true,
    hintStyle: TextStyle(
      color: AppColors.dark.secondaryText,
      fontSize: 12.0,
    ),
    border: OutlineInputBorder(
      borderSide: BorderSide.none,
      borderRadius: BorderRadius.circular(40),
    ),
  ),
  sliderTheme: SliderThemeData(
    activeTrackColor: AppColors.dark.primaryColor,
    inactiveTrackColor: AppColors.dark.primaryColor.withOpacity(0.5),
    trackHeight: 4.0,
    thumbColor: AppColors.dark.primaryColor,
    thumbShape: const RoundSliderThumbShape(enabledThumbRadius: 12.0),
    overlayColor: AppColors.dark.primaryColor.withOpacity(0.5),
    overlayShape: const RoundSliderOverlayShape(overlayRadius: 28.0),
    valueIndicatorColor: AppColors.light.primaryColor,
    valueIndicatorShape: const PaddleSliderValueIndicatorShape(),
  ),
  elevatedButtonTheme: ElevatedButtonThemeData(
    style: ButtonStyle(
      backgroundColor: MaterialStateProperty.resolveWith((states) {
        // If the button is pressed, return green, otherwise blue
        if (states.contains(MaterialState.pressed) || states.contains(MaterialState.hovered)) {
          return AppColors.dark.primaryColor.withOpacity(0.6);
        }
        return AppColors.dark.primaryColor;
      }),
      textStyle: MaterialStateProperty.resolveWith((states) {
        // If the button is pressed, return size 40, otherwise 20
        if (states.contains(MaterialState.pressed)) {
          return const TextStyle(color: Colors.white);
        }
        return const TextStyle(color: Colors.white);
      }),
      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
        RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8.0),
        ),
      ),
    )
  )
);
//endregion


abstract class AppTheme {
  static ThemeData get dark => _darkTheme;
  static ThemeData get light => _lightTheme;
}
import 'package:flutter/material.dart';

var kColorScheme = ColorScheme.fromSeed(
  seedColor: const Color(0xFFD1C4E9), // Light purple seed color
  primary: const Color(0xFF9575CD), // Light purple primary color
  secondary: const Color(0xFFB39DDB), // Secondary light purple
);

var kDarkColorScheme = ColorScheme.fromSeed(
  seedColor: const Color(0xFF4A148C), // Dark purple seed color
  primary: const Color(0xFF6A1B9A), // Darker primary purple
  secondary: const Color(0xFF7B1FA2), // Darker secondary purple
);

final lightThemeData = ThemeData().copyWith(
  colorScheme: kColorScheme,
  appBarTheme: const AppBarTheme().copyWith(
    backgroundColor: kColorScheme.onPrimaryContainer,
    foregroundColor: kColorScheme.primaryContainer,
  ),
  cardTheme: const CardTheme().copyWith(
    color: kColorScheme.secondaryContainer,
    margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 8),
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
    elevation: 2, // Add slight elevation for better visibility
    shadowColor: kColorScheme.shadow, // Use shadow color from the color scheme
  ),
  elevatedButtonTheme: ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(
      backgroundColor: kColorScheme.primary,
      foregroundColor: kColorScheme.onPrimary,
    ),
  ),
  textTheme: TextTheme().copyWith(
    titleLarge: TextStyle(
      fontSize: 20,
      fontWeight: FontWeight.bold,
      color: kColorScheme.onSecondaryContainer, // Updated for better visibility
    ),
    bodyLarge: TextStyle(
      fontSize: 16,
      color: kColorScheme.onSecondaryContainer, // Updated for better visibility
    ),
    bodyMedium: TextStyle(
      fontSize: 14,
      color: kColorScheme.onSecondaryContainer, // Updated for better visibility
    ),
    bodySmall: TextStyle(
      fontSize: 12,
      color: kColorScheme.onSecondaryContainer, // Updated for better visibility
    ),
    labelLarge: TextStyle(
      fontSize: 16,
      color: kColorScheme.onSecondaryContainer, // Updated for better visibility
    ),
    labelMedium: TextStyle(
      fontSize: 14,
      color: kColorScheme.onSecondaryContainer, // Updated for better visibility
    ),
    labelSmall: TextStyle(
      fontSize: 12,
      color: kColorScheme.onSecondaryContainer, // Updated for better visibility
    ),
    headlineLarge: TextStyle(
      fontSize: 24,
      fontWeight: FontWeight.bold,
      color: kColorScheme.onSecondaryContainer, // Updated for better visibility
    ),
  ),
  bottomSheetTheme: BottomSheetThemeData(
    backgroundColor: kColorScheme.primaryContainer,
  ),
);

final darkThemeData = ThemeData.dark().copyWith(
  colorScheme: kDarkColorScheme,
  appBarTheme: AppBarTheme().copyWith(
    backgroundColor: kDarkColorScheme.primary,
    foregroundColor: kDarkColorScheme.onPrimary,
  ),
  cardTheme: CardTheme().copyWith(
    color: kDarkColorScheme.secondaryContainer,
    margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 8),
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
    elevation: 2,
    shadowColor: kDarkColorScheme.shadow,
  ),
  elevatedButtonTheme: ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(
      backgroundColor: kDarkColorScheme.primary,
      foregroundColor: kDarkColorScheme.onPrimary,
    ),
  ),
  textTheme: TextTheme().copyWith(
    titleLarge: TextStyle(
      fontSize: 20,
      fontWeight: FontWeight.bold,
      color: kDarkColorScheme.onSecondaryContainer,
    ),
    bodyLarge: TextStyle(
      fontSize: 16,
      color: kDarkColorScheme.onSecondaryContainer,
    ),
    bodyMedium: TextStyle(
      fontSize: 14,
      color: kDarkColorScheme.onSecondaryContainer,
    ),
    bodySmall: TextStyle(
      fontSize: 12,
      color: kDarkColorScheme.onSecondaryContainer,
    ),
    labelLarge: TextStyle(
      fontSize: 16,
      color: kDarkColorScheme.onSecondaryContainer,
    ),
    labelMedium: TextStyle(
      fontSize: 14,
      color: kDarkColorScheme.onSecondaryContainer,
    ),
    labelSmall: TextStyle(
      fontSize: 12,
      color: kDarkColorScheme.onSecondaryContainer,
    ),
    headlineLarge: TextStyle(
      fontSize: 24,
      fontWeight: FontWeight.bold,
      color: kDarkColorScheme.onSecondaryContainer,
    ),
  ),
  bottomSheetTheme: BottomSheetThemeData(
    backgroundColor: kDarkColorScheme.primaryContainer,
  ),
);

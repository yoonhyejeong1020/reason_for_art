import 'package:flutter/material.dart';

import 'color_utils.dart';

ThemeData themeDataUtils() => ThemeData(
    useMaterial3: true,
    scaffoldBackgroundColor: ColorUtils.grayColor01,
    appBarTheme: AppBarTheme(
      backgroundColor: ColorUtils.grayColor01,
      foregroundColor: ColorUtils.primaryColor,
      elevation: 0,
      scrolledUnderElevation: 0,
    ),
    fontFamily: 'Roboto',
    textTheme: TextTheme(
      bodySmall: TextStyle(fontSize: 14, color: ColorUtils.grayColor04),
      bodyMedium: TextStyle(fontSize: 16),
      bodyLarge: TextStyle(fontSize: 18),

      titleSmall: TextStyle(fontSize: 14, color: Colors.white),
      titleMedium: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: ColorUtils.grayColor01),
      titleLarge: TextStyle(fontSize: 22, fontWeight: FontWeight.bold, color: ColorUtils.grayColor06),

      displayMedium: TextStyle(fontSize: 16, fontWeight: FontWeight.bold, color: ColorUtils.grayColor05),
      displayLarge: TextStyle(fontSize: 16, color: Colors.white),
    ),
  );
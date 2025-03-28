import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomTheme {

  static const Color primaryColor = Color.fromARGB(255, 236, 102, 104);
  static const Color secondaryColor = Colors.white;
  static const Color textColor = Colors.white;
  static TextStyle poppinsTextStyle({double fontSize = 50, FontWeight fontWeight = FontWeight.w600}) {
    return GoogleFonts.poppins(
      color: textColor,
      fontSize: fontSize,
      fontWeight: fontWeight,
      letterSpacing: -2,
    );
  }

  static TextStyle latoTextStyle({double fontSize = 14, Color color = textColor}) {
    return GoogleFonts.lato(
      color: color,
      fontSize: fontSize,
    );
  }

    static const LinearGradient customGradient = LinearGradient(
    begin: Alignment.centerLeft,
    end: Alignment.centerRight,
    colors: [
      Color.fromARGB(255, 235, 94, 107),
      Color.fromARGB(255, 237, 114, 99),
    ],
  );

  static ThemeData lightTheme = ThemeData(
    colorScheme: ColorScheme.light(
      primary: primaryColor, // principal
      onPrimary: secondaryColor, 
      surface: primaryColor, 
      onSurface: secondaryColor, 
    ),
      scaffoldBackgroundColor: Colors.transparent,
      appBarTheme: AppBarTheme(
      backgroundColor: primaryColor,
      iconTheme: IconThemeData(color: secondaryColor),
      titleTextStyle: poppinsTextStyle(fontSize: 20),
    ),
    textTheme: TextTheme(
      displayLarge: latoTextStyle(fontSize: 30), 
      displayMedium: latoTextStyle(fontSize: 26), 
      displaySmall: latoTextStyle(fontSize: 22),
      bodyLarge: latoTextStyle(fontSize: 16),
      bodyMedium: latoTextStyle(fontSize: 14),
      bodySmall: latoTextStyle(fontSize: 12), 
      labelSmall: latoTextStyle(fontSize: 10),
      labelLarge: latoTextStyle(fontSize: 14, color: primaryColor), 
    ),
    buttonTheme: ButtonThemeData(
      buttonColor: primaryColor, 
    ),
  );
}

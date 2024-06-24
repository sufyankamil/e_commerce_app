import 'package:flutter/material.dart';

class EOutlinedButtonTheme {
  EOutlinedButtonTheme._(); // To avoid creating an instance of this class

  static OutlinedButtonThemeData lightOutlinedButtonTheme = OutlinedButtonThemeData(
    style: ButtonStyle(
      elevation: WidgetStateProperty.all(0),
      foregroundColor: WidgetStateProperty.all(Colors.white),
      side: WidgetStateProperty.all(
        const BorderSide(color: Colors.blue),
      ),
      textStyle: WidgetStateProperty.all(
        const TextStyle(fontSize: 16, color: Colors.black, fontWeight: FontWeight.w600),
      ),
      padding: WidgetStateProperty.all(
        const EdgeInsets.symmetric(vertical: 18, horizontal: 20),
      ),
      shape: WidgetStateProperty.all(
        RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(14),
        ),
      ),
    ),
  );

  static OutlinedButtonThemeData darkOutlinedButtonTheme = OutlinedButtonThemeData(
    style: ButtonStyle(
      elevation: WidgetStateProperty.all(0),
      foregroundColor: WidgetStateProperty.all(Colors.white),
      side: WidgetStateProperty.all(
        const BorderSide(color: Colors.blueAccent),
      ),
      textStyle: WidgetStateProperty.all(
        const TextStyle(fontSize: 16, color: Colors.white, fontWeight: FontWeight.w600),
      ),
      padding: WidgetStateProperty.all(
        const EdgeInsets.symmetric(vertical: 18, horizontal: 20),
      ),
      shape: WidgetStateProperty.all(
        RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(14),
        ),
      ),
    ),
  );
}

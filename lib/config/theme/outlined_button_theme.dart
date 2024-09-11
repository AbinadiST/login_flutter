import 'package:flutter/material.dart';
import 'package:login/constants/colors.dart';
import 'package:login/constants/sizes.dart';

class OutlinedButtonCustomTheme {
  OutlinedButtonCustomTheme._(); //! Para evitar crear instancias


  // Light Theme

  static final lightOutlinedButtonTheme = OutlinedButtonThemeData(
    style: OutlinedButton.styleFrom(
      shape: RoundedRectangleBorder( borderRadius: BorderRadius.circular(5) ),  //* border circular
      foregroundColor: secondaryColor,
      side: const BorderSide( color: secondaryColor ),
      padding: const EdgeInsets.symmetric( vertical: buttonHeight ),
    ),
  );


  // Dark Theme

  static final darkOutlinedButtonTheme = OutlinedButtonThemeData(
    style: OutlinedButton.styleFrom(
      shape: RoundedRectangleBorder( borderRadius: BorderRadius.circular(5) ),  //* border circular 
      foregroundColor: whiteColor,
      side: const BorderSide( color: whiteColor ),
      padding: const EdgeInsets.symmetric( vertical: buttonHeight ),
    ),
  );
}
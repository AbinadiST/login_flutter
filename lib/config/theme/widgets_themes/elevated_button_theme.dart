import 'package:flutter/material.dart';
import 'package:login/constants/colors.dart';
import 'package:login/constants/sizes.dart';

class ElevatedButtonCustomTheme {
  ElevatedButtonCustomTheme._(); //! Pare evitar crear instancias 

  // Light Theme

  static final lightElevatedButtonTheme = ElevatedButtonThemeData(
    style: OutlinedButton.styleFrom(
      elevation: 0,  //* sombra del boton al darl clic,
      shape: const RoundedRectangleBorder( borderRadius: BorderRadius.all(Radius.circular(5))),
      foregroundColor: whiteColor,
      backgroundColor: secondaryColor,
      side: const BorderSide( color: secondaryColor ),
      padding: const EdgeInsets.symmetric( vertical: buttonHeight ),
    ),
  );
  

  // Dark Theme
    
  static final darkEleveatedButtonTheme = ElevatedButtonThemeData(
    style: OutlinedButton.styleFrom(
      elevation: 0,  //* sombra del boton al dar clic
      shape: const RoundedRectangleBorder( borderRadius: BorderRadius.all(Radius.circular(5))),
      foregroundColor: secondaryColor,
      backgroundColor: whiteColor,
      side: const BorderSide( color: secondaryColor ),
      padding: const EdgeInsets.symmetric( vertical: buttonHeight ),
    ),
  );
}
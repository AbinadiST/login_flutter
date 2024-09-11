import 'package:flutter/material.dart';
import 'package:login/constants/colors.dart';


class TTextFormFieldTheme {
  TTextFormFieldTheme._();

  // Light Theme

  static InputDecorationTheme lightInputDecorationTheme = 
    const InputDecorationTheme(
      border: OutlineInputBorder(), //* se convierte cuadrado el campo
      prefixIconColor: secondaryColor,
      floatingLabelStyle: TextStyle( color: secondaryColor ),
      focusedBorder: OutlineInputBorder(
        borderSide: BorderSide( width: 2.0, color: secondaryColor ) //* añade el BORDO el color SECONDARYCOLOR
    ),
  );

  // Dark Theme

  static InputDecorationTheme darkInputDecorationTheme = 
    const InputDecorationTheme(
      border: OutlineInputBorder(), //* se convierte cuadrado el campo
      prefixIconColor: primaryColor,
      floatingLabelStyle: TextStyle( color: primaryColor ),
      focusedBorder: OutlineInputBorder(
        borderSide: BorderSide( width: 2.0, color: primaryColor ), //* añade el BORDO el color PRIMARYCOLOR
    ),
  );

}
import 'package:flutter/material.dart';
import 'package:login/config/theme/widgets_themes/elevated_button_theme.dart';
import 'package:login/config/theme/widgets_themes/outlined_button_theme.dart';
import 'package:login/config/theme/widgets_themes/text_theme.dart';
import 'package:login/config/theme/widgets_themes/text_field_theme.dart';

const colorList = <Color> [

  Colors.yellow,
  Colors.blue,
  Colors.red,
  Colors.green,

];

class AppTheme {

  // final int selectedColor;

  // AppTheme({
    
  //   this.selectedColor = 0,

  //   });

  // LIGHT THEME --------------------------------------------------------------------

  ThemeData getTheme() => ThemeData(
    
    useMaterial3: true,
    // colorSchemeSeed: colorList [ selectedColor ],
    textTheme: TTextTheme.lightTextTheme,
    elevatedButtonTheme: ElevatedButtonCustomTheme.lightElevatedButtonTheme,
    outlinedButtonTheme: OutlinedButtonCustomTheme.lightOutlinedButtonTheme, //! Se exportó de la clase
    inputDecorationTheme: TTextFormFieldTheme.lightInputDecorationTheme, //* diseño FORM para SING UP
    // primarySwatch: Colors.blue,

    appBarTheme: const AppBarTheme(
      centerTitle: false,
      // backgroundColor: colorList[ selectedColor ],

    ),

    floatingActionButtonTheme: const FloatingActionButtonThemeData( 
      // backgroundColor: colorList [ selectedColor ] 

    ),
  );


  // BLACK THEME -----------------------------------------------------------------

  ThemeData getThemeBlack() => ThemeData(
    
    useMaterial3: true,
    brightness: Brightness.dark,
    // colorSchemeSeed: colorList [ selectedColor ],
    textTheme: TTextTheme.darkTextTheme,
    elevatedButtonTheme: ElevatedButtonCustomTheme.darkEleveatedButtonTheme,
    outlinedButtonTheme: OutlinedButtonCustomTheme.darkOutlinedButtonTheme,  //! Se exportó de la clase
    inputDecorationTheme: TTextFormFieldTheme.darkInputDecorationTheme, //* Diseño FORM para DARK
    // primarySwatch: Colors.blue,

    appBarTheme: const AppBarTheme(
      centerTitle: false,
      // backgroundColor: colorList[ selectedColor ],

    ),

    floatingActionButtonTheme: const FloatingActionButtonThemeData( 
      // backgroundColor: colorList [ selectedColor ] 

    ),
  );

}
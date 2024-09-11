import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:login/config/theme/elevated_button_theme.dart';
import 'package:login/config/theme/outlined_button_theme.dart';
import 'package:login/utils/widget_themes/text_field_theme.dart';

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
    textTheme: _customTextTheme(),
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
    textTheme: _customTextTheme(),
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

  
// CUSTOM TEXT THEME -----------------------------------------------------

  TextTheme _customTextTheme() {

    return TextTheme(
      
    headlineLarge: GoogleFonts.raleway( 
      // color: colorList[ selectedColor ] 
      // fontSize: 20 //* se coloca tamaño entre otras cosas
      ), 
    headlineMedium: GoogleFonts.raleway( 
      // color: colorList[ selectedColor ] 
      ),
    headlineSmall: GoogleFonts.raleway( 
      // color: colorList[ selectedColor ] 
      ),
    bodyLarge: GoogleFonts.raleway( 
      // color: colorList[ selectedColor ] 
      ),
    bodyMedium: GoogleFonts.raleway()
    
    );
  }

}
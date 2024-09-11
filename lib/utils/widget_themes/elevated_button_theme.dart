
import 'package:flutter/material.dart';
import 'package:login/constants/colors.dart';
import 'package:login/constants/sizes.dart';


// LIGHT THEME 

final lightElevatedButtonTheme = ElevatedButtonThemeData(
  style: ElevatedButton.styleFrom(
    elevation: 0,
    foregroundColor: whiteColor,
    backgroundColor: secondaryColor,
    side: const BorderSide( color: secondaryColor ),
    padding: const EdgeInsets.symmetric( vertical: buttonHeight ),
    shape: RoundedRectangleBorder( borderRadius: BorderRadius.circular( 5.0 )
    )
  )
);


// DARK THEME

final darkElevatedButtonTheme = ElevatedButtonThemeData(
  style: ElevatedButton.styleFrom(
    elevation: 0,
    foregroundColor: whiteColor,
    backgroundColor: secondaryColor,
    side: const BorderSide( color: whiteColor ),
    padding: const EdgeInsets.symmetric( vertical: buttonHeight ),
    shape: RoundedRectangleBorder( borderRadius: BorderRadius.circular( 5.0 )
    )
  )
);

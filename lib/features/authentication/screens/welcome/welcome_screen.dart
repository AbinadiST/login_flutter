import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:login/constants/colors.dart';
import 'package:login/constants/image_strings.dart';
import 'package:login/constants/sizes.dart';
import 'package:login/constants/text_strings.dart';
import 'package:login/features/authentication/screens/login/login_screen.dart';
import 'package:login/features/authentication/screens/signup/signup_screen.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {

    var mediaQuery = MediaQuery.of(context);
    var height = mediaQuery.size.height;
    var brightness = mediaQuery.platformBrightness;
    final isDarkMode = brightness == Brightness.dark;

    return Scaffold(
      backgroundColor: isDarkMode ? secondaryColor : primaryColor, //* en modo LIGHT conserva color amarillo, de lo contrario es DARK
      body: Container(
        padding: const EdgeInsets.all( defaultSize), 
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Hero(
              tag: 'welcome-image-tag',
              child: Image(
                image: const AssetImage( welcomeScreenImage ),
                height: height * 0.6,  //! Se cambia tamaño de imagen
              ),
            ),
            Column(

              // Texto TITULO y SUBTITULO ------------------------------------

              children: [
                Text( 
                  welcomeTitle,
                  style: Theme.of(context).textTheme.headlineLarge,
                  textAlign: TextAlign.center,
                 ),
                Text( 
                  welcomeSubTitle,
                  style: Theme.of(context).textTheme.bodyLarge,
                  textAlign: TextAlign.center,
                  ),
                ]
              ),
            Row(

              // Botones LOGIN y SINGUP ------------------------------------------

              children: [

                Expanded(
                  child: OutlinedButton(
                    onPressed: () => Get.to( () => const LoginScreen() ), //! Cambiamos de página
                    child: Text( login.toUpperCase() )
                  ),
                ),
 
                const SizedBox( width: 10),

                Expanded(
                  child: ElevatedButton(onPressed: () => Get.to( () => const SignUpScreen() ), 
                  
                  child: Text( signup.toUpperCase() )
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
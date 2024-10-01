import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:login/constants/colors.dart';
import 'package:login/constants/image_strings.dart';
import 'package:login/constants/sizes.dart';
import 'package:login/constants/text_strings.dart';
import 'package:login/features/authentication/controller/splash_screen_controller.dart';

class SplashScreen extends StatelessWidget {
  SplashScreen({super.key});

  // SplashScreenController splashScreenController = SplashScreenController(); | se instancia la clase
  final splashController = Get.put(SplashScreenController()); //* En lugar de arriba hacemos esta línea

  @override
  Widget build(BuildContext context) {

    splashController.startAnimation(); //* Se usa el controlador 

    return Scaffold(
      body: Stack(  //* Permite posicionar un diseño sobre otro
        children: [

          // Image top | balon de barcelona -------------------------------------
          Obx( () => AnimatedPositioned(  //* esta OBSERVANDO la funcion ANIMATE | imagen se mueve en cierto un tiempo
              duration: const Duration(milliseconds: 1600),
              top: splashController.animate.value ? 0 : -30,
              left: splashController.animate.value ? 0 : -30,

              child: AnimatedOpacity( //* Imagen aparece después de un tiempo
                duration: const Duration( milliseconds: 1600 ),
                opacity: splashController.animate.value ? 1 : 0,  //* Desaparece imagen lentamente
                child: const Image(
                  image: AssetImage(splashTopIcon),
                ),
              ),
            ),
          ),

          // TEXTO -----------------------------------------------------------------
          Obx( () => AnimatedPositioned(
              duration: const Duration( milliseconds: 1600),
              top: 80,
              left: splashController.animate.value ? defaultSize : -80,
              child: AnimatedOpacity(
                duration: const Duration( milliseconds: 4000),
                opacity: splashController.animate.value ? 1 : 0, //* Aparecerá el mensaje lentamente | 1 = desaparece 0 = aparece
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      appName, 
                      style: Theme.of(context).textTheme.headlineSmall
                      ),
                    Text(
                      appTagLine, 
                      style: Theme.of(context).textTheme.headlineMedium
                      ),
                    ],
                  ),
                ),
              ),
          ),

          // Barcelona Team -----------------------------------------------------------------
          Obx( () => AnimatedPositioned(
              duration: const Duration(milliseconds: 2400),
              bottom: splashController.animate.value ? 100 : 0,
              child: AnimatedOpacity(
                duration: const Duration( milliseconds: 200),
                opacity: splashController.animate.value ? 1 : 0,
                child: const Image(image: AssetImage( splashImage ) 
                ),
              ),
            ),
          ),

          // circulo amarillo -----------------------------------------------------------------
          Obx( () => AnimatedPositioned(
              duration: const Duration( milliseconds: 2400),
              bottom: splashController.animate.value ? 60 : 0,
              right: defaultSize,
              child: AnimatedOpacity(
                duration: const Duration( milliseconds: 2000 ),
                opacity: splashController.animate.value ? 1 : 0,
                child: Container(
                  width: splashContainerSize,
                  height: splashContainerSize,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(100),
                    color: primaryColor,
                  ),
                ),
              )
            ),
          ),
        ],
      ),
    );
  }
  
  
}
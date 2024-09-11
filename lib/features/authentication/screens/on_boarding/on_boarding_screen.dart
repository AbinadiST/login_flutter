import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:liquid_swipe/liquid_swipe.dart';
import 'package:login/constants/colors.dart';
import 'package:login/features/authentication/controller/on_boarding_controller.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

//! min 13:16 | video 6, ver controller = LiquidController()

class OnBoardingScreen extends StatelessWidget {
  const OnBoardingScreen({super.key});

  @override
  Widget build(BuildContext context) {

    final obController = OnBoardingController();  //* Se realiza una instancia
    
    return Scaffold(
      body: Stack(
        alignment: Alignment.center, // Centra el circulo negro con flecha 
        children: [
          LiquidSwipe(
            pages: obController.pages, //* aquí era lista de PAGES pero creamos arriba evitar mucho código aquí adentro
            enableSideReveal: true, //* Muestra el color de fondo de la siguiente página
            liquidController: obController.controller, 
            onPageChangeCallback: obController.onPageChangedCallback,
            slideIconWidget: const Icon( Icons.arrow_back_ios, color: Colors.black ),
          ),
          
          // Circulo gris -------------------------
          Positioned(
            bottom: 60,
            child: OutlinedButton(  
              onPressed: () => obController.animateToNextSlide(),
              style: ElevatedButton.styleFrom(
                side: const BorderSide( color: Colors.black26 ),
                shape: const CircleBorder(),
                padding: const EdgeInsets.all( 20 ),
                foregroundColor: Colors.white,
              ),
              // círculo negro -----------------------------------------
              child: Container(
                padding: const EdgeInsets.all( 20 ), // padding extiende lo de adentro
                decoration: const BoxDecoration(
                  color: darkColor, // fondo círculo negro
                  shape: BoxShape.circle
                ),
                child: const Icon( Icons.arrow_forward_ios ),
              ),
            ),
          ),

          // SKIPER --------------------------------------------------
          Positioned(
            top: 50,
            right: 20,
            child: TextButton(
              onPressed: () => obController.skip(),
              child: const Text(
                'Skip',
                style: TextStyle( color: Colors.grey ),
                ),
              )
            ),
          
          // Efectos de los contadores de páginas ------------------------
          Obx( () => Positioned(
              bottom: 10,
              child: AnimatedSmoothIndicator(
                activeIndex: obController.currentPage.value, 
                count: obController.pages.length, //* Cantidad de páginas *****
                effect: const JumpingDotEffect(
                  verticalOffset: 20,  //* brinca el punto
                  activeDotColor: Color(0xFF272727),
                  // dotHeight: 5,  //? DOTHEIGHT: diferentes opocines a checar *****
                  ),
                )
              ),
          ),
        ],
      ),
    );
  }
}


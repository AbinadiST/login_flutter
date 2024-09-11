import 'package:get/get.dart';
import 'package:liquid_swipe/PageHelpers/LiquidController.dart';
import 'package:login/constants/colors.dart';
import 'package:login/constants/image_strings.dart';
import 'package:login/constants/text_strings.dart';
import 'package:login/features/authentication/models/model_on_boarding.dart';
import 'package:login/features/authentication/screens/on_boarding/on_boarding_page_widget.dart';




class OnBoardingController extends GetxController{

  final controller = LiquidController();
  RxInt currentPage = 0.obs;
  
  final pages = [

      OnBoardingPageWidget(
        model: OnBoardingModel(

          image: onBoardingImage1, 
          title: onBoardingTitle1, 
          subTitle: onBoardingSubTitle1, 
          counterText: onBoardingCounter1, 
          bgColor: onBoardingPage1Color, 

          )
        ),

      OnBoardingPageWidget(
        model: OnBoardingModel(

          image: onBoardingImage2, 
          title: onBoardingTitle2, 
          subTitle: onBoardingSubTitle2, 
          counterText: onBoardingCounter2, 
          bgColor: onBoardingPage2Color, 

          )
        ),

      OnBoardingPageWidget(
        model: OnBoardingModel(

          image: onBoardingImage3, 
          title: onBoardingTitle3, 
          subTitle: onBoardingSubTitle3, 
          counterText: onBoardingCounter3, 
          bgColor: onBoardingPage3Color, 

          )
        )
      
      ];

    skip() => controller.jumpToPage(page: 0); //* Brinca a la pagina 1
    
    animateToNextSlide(){
      int nextPage = controller.currentPage + 1; //* pasa a la siguiente pagina *****
      controller.animateToPage(page: nextPage);
    }

  void onPageChangedCallback(int activePageIndex) => currentPage.value = activePageIndex;
  
}
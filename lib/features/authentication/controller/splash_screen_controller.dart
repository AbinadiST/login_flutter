import 'package:get/get.dart';
import 'package:login/features/authentication/screens/welcome/welcome_screen.dart';



class SplashScreenController extends GetxController {
  static SplashScreenController get find => Get.find();

  RxBool animate = false.obs;  //* OBS = Observable

  Future startAnimation() async {

    await Future.delayed(const Duration(milliseconds: 500));
    animate.value = true;  //* value proviene del RXBOOL
    await Future.delayed(const Duration(milliseconds: 5000));
    Get.offAll(() => const WelcomeScreen()); 
    // Get.to(const WelcomeScreen()); //* Cambiamos de pantalla, otra manera de hacerlo
    // Navigator.pushReplacement( context, MaterialPageRoute(builder: ( context ) => const WelcomeScreen() ));

  }

}
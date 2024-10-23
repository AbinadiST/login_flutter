import 'package:get/get.dart';
import 'package:login/features/core/screens/dashboard/dashboard_screen.dart';
import 'package:login/repository/authentication_repository/authentication_repository.dart';



class OTPController extends GetxController {
  static OTPController get instance => Get.find();

  void verifyOTP( String otp ) async {
    var isVerified = await AuthenticationRepository.instance.verifyOTP(otp);
    isVerified ? Get.offAll( const DashboardScreen()) : Get.back(); 
    //* Removemos todo el SCREEN usando GET.OFALL 
    //* Nos movemos a la actividad previa con GET.BACK()

  }
}
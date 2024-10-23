import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:login/repository/authentication_repository/authentication_repository.dart';



class SignUpController extends GetxController {

  static SignUpController get instance => Get.find();


  //TEXTFIELD CONTROLLERS TO GET DATA FROM TEXTFIELDS

  final email    = TextEditingController();
  final password = TextEditingController();
  final fullName = TextEditingController(); 
  final phoneNo  = TextEditingController(); 

  // CALL THIS FUNCTION FROM DESING & IT WILL DO THE REST

  void registerUser(String email, String password) {
    String? error = AuthenticationRepository.instance.createUserWithEmailAndPassword(email, password) as String;
    if ( error != null ){
      Get.showSnackbar(GetSnackBar(message: error.toString()));
    }
  }

  void phoneAuthentication( String phoneNo ) {
    AuthenticationRepository.instance.phoneAuthentication(phoneNo);
  }

}
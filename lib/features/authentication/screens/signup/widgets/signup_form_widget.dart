import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:login/constants/sizes.dart';
import 'package:login/constants/text_strings.dart';
import 'package:login/features/authentication/controller/signup_controller.dart';
import 'package:login/features/authentication/screens/forget_password/forget_password_otp/otp_screen.dart';


class SignUpFormWidget extends StatelessWidget {
  const SignUpFormWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {

    final controller = Get.put( SignUpController() );
    final _formKey = GlobalKey<FormState>();

    return Container(
            padding: const EdgeInsets.symmetric( vertical: formHeight - 10 ),
            child: Form(
              key: _formKey,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
    
                  TextFormField(
                    controller: controller.fullName,
                    decoration: const InputDecoration(
                      label: Text( fullName ), //! unas propiedades no se pudieron agregar en e
                      prefixIcon: Icon( Icons.person_outline_rounded ),
                    )
                  ),
    
                  const SizedBox( height: formHeight - 20 ),
    
                  TextFormField(
                    controller: controller.email,
                    decoration: const InputDecoration(
                      label: Text( email ), //! unas propiedades no se pudieron agregar en e
                      prefixIcon: Icon( Icons.email_outlined ),
                    )
                  ),
    
                  const SizedBox( height: formHeight - 20 ),
    
                  TextFormField(
                    controller: controller.phoneNo,
                    decoration: const InputDecoration(
                      label: Text( phone ), //! unas propiedades no se pudieron agregar en e
                      prefixIcon: Icon( Icons.phone_android_outlined ),
                    )
                  ),
                  
                  const SizedBox( height: formHeight - 20 ),
                  
                  TextFormField(
                    controller: controller.password,
                    decoration: const InputDecoration(
                      label: Text( password ), //! unas propiedades no se pudieron agregar en e
                      prefixIcon: Icon( Icons.fingerprint ),
                    )
                  ),
    
                  const SizedBox( height: formHeight ),
    
                  SizedBox(
                    width: double.infinity,
                    child: ElevatedButton(
                      onPressed: () {
                        if ( _formKey.currentState!.validate()){
                          // SignUpController.instance.registerUser( controller.email.text.trim(), controller.password.text.trim()); //* se borro en video 16 min 15:00
                          SignUpController.instance.phoneAuthentication( controller.phoneNo.text.trim());
                          Get.to( ()=> const OTPScreen());
                        }
                      }, 
                      child: Text( signup.toUpperCase() )
                    ),
                  ),
                ],
              )
            ),
          );
  }
}
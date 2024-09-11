import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:login/common_widgets/form/form_header_widget.dart';
import 'package:login/constants/image_strings.dart';
import 'package:login/constants/sizes.dart';
import 'package:login/constants/text_strings.dart';
import 'package:login/features/authentication/screens/forget_password/forget_password_otp/otp_screen.dart';


class ForgetPasswordMailScreen extends StatelessWidget {
  const ForgetPasswordMailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView( //* se usa SINGLE... al ingresar el EMAIL el teclado tapa campo EMAIL, se soluciona con SINGLE...
          child: Container(
            padding: const EdgeInsets.all( defaultSize ),
            child: Column(
              children: [
          
                const SizedBox( height: defaultSize * 4 ),
          
                const FormHeaderWidget(
                  image: forgetPasswordImage, 
                  title: forgetPassword, 
                  subTitle: forgetPasswordSubtitle,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  heightBetween: 30,
                  textAlign: TextAlign.center,
                ),
          
                const SizedBox( height: formHeight ),
          
                Form(
                  child: Column(
                    children: [
                      TextFormField(
                        decoration: const InputDecoration(
                          label: Text( email ),
                          hintText: email,
                          prefixIcon: Icon( Icons.mail_outline_rounded )
                        ),
                      ),
      
                      const SizedBox( height: 20 ),
      
                      SizedBox(
                        width: double.infinity,
                        child: ElevatedButton(onPressed: () {
                          Get.to( () => const OTPScreen() );  //! Cambiamos de Screen
                        }, 
                          child: Text( next.toUpperCase() )
                        ),
                      )
                    ],
                  )
                )
          
              ],
            ),
          ),
        ),
      ),
    );
  }
}
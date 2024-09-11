import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:login/constants/sizes.dart';
import 'package:login/constants/text_strings.dart';
import 'package:login/features/authentication/screens/forget_password/forget_password_mail/forget_password_mail.dart';
import 'package:login/features/authentication/screens/forget_password/forget_password_options/forget_password_btn_widget.dart';


class ForgetPasswordScreen {

  static Future<dynamic> buildShowModalBottomSheet(BuildContext context) {  //* Agregamos el STATIC después de pegar todo
    return showModalBottomSheet(  //! Pantalla que aparece desde abajo 
                  context: context, 
                  // shape: RoundedRectangleBorder( borderRadius: BorderRadius.circular(20.0 )), //* En caso el Iphone no tenga esquinas redondas
                  builder: (context) => Container(
                    padding: const EdgeInsets.all( defaultSize ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text( forgetPasswordTitle, style: Theme.of(context).textTheme.headlineMedium ),
                        Text( forgetPasswordSubtitle, style: Theme.of(context).textTheme.bodyLarge ),

                        const SizedBox( height: 30.0 ),

                        ForgetPasswordBtnWidget(
                          btnIcon: Icons.mail_outline_outlined,
                          title: email,
                          subTitle: resetViaEMail,
                          onTap: () { 
                            Navigator.pop(context); //! Te regesa al CONTEXT de app es decir al SCREEN de esta pantalla
                            Get.to( () => const ForgetPasswordMailScreen() );
                          },
                        ),

                        const SizedBox( height: 20 ),

                        ForgetPasswordBtnWidget(
                          btnIcon: Icons.mobile_friendly_rounded,
                          title:phone,
                          subTitle: resetViaPhone,
                          onTap: () {},
                        ),
                      ],
                    ),
                  ) 
                  );
  }
  
}
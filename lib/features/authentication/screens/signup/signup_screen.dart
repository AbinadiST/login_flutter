import 'package:flutter/material.dart';
import 'package:login/common_widgets/form/form_header_widget.dart';
import 'package:login/constants/image_strings.dart';
import 'package:login/constants/sizes.dart';
import 'package:login/constants/text_strings.dart';
import 'package:login/features/authentication/screens/signup/widgets/signup_form_widget.dart';



class SignUpScreen extends StatelessWidget {
  const SignUpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Container(
          padding: const EdgeInsets.all( defaultSize ),
          child: Column(
            children: [
              const FormHeaderWidget(
                image: welcomeScreenImage, 
                title: signUpTitle, 
                subTitle: signUpSubTitle
              ),

              const SignUpFormWidget(),

              Column(
                children: [

                  const Text( 'OR' ),

                  const SizedBox( height: 10 ),

                  SizedBox( 
                    width: double.infinity,
                    child: OutlinedButton.icon(  //* .ICON para habilitar propiedad ICON
                      onPressed: () {}, 
                      icon: const Image( image: AssetImage( googleLogoImage ), width: 20.0,
                      ),
                      label: Text( singInWithGoogle.toUpperCase() ),
                      ), 
                    ),

                    TextButton(onPressed: () {}, 
                    child: Text.rich( 
                      TextSpan(
                        children: [
                          TextSpan( text: alreadyHaveAnAccount, style: Theme.of(context).textTheme.bodyLarge ),
                          TextSpan( text: login.toUpperCase() ),
                        ]
                      )
                      )
                    )
                  ],
                )
              ]
            )
          )
        ),
      ),
    );
  }
}


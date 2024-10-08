import 'package:flutter/material.dart';
import 'package:login/common_widgets/form/form_header_widget.dart';
import 'package:login/constants/image_strings.dart';
import 'package:login/constants/sizes.dart';
import 'package:login/constants/text_strings.dart';
import 'package:login/features/authentication/screens/login/login_footer_widget.dart';
import 'package:login/features/authentication/screens/login/login_form_widget.dart';


class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {

    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Container(
            padding: const EdgeInsets.all( defaultSize ),
            child: const Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [

                FormHeaderWidget(
                  image: welcomeScreenImage, 
                  title: loginTitle, 
                  subTitle: loginSubTitle,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  ),
               
                LoginForm(),
                
                LoginFooterWidget()

              ],
            ),
          ),
        ),
      ),
    );
  }
}

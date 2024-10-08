import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:login/constants/sizes.dart';
import 'package:login/constants/text_strings.dart';
import 'package:login/features/authentication/screens/forget_password/forget_password_options/forget_password_model_bottom_sheet.dart';
import 'package:login/features/core/screens/dashboard/dashboard_screen.dart';


class LoginForm extends StatelessWidget {
  const LoginForm({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Form(
      child: Container( //* CONTAINER para realizar separación arriba y abajo
        padding: const EdgeInsets.symmetric( vertical: formHeight -10 ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TextFormField(
    
              decoration: const InputDecoration(
                prefixIcon: Icon( Icons.person_outline_outlined ),
                labelText: email,
                hintText: email,
                border: OutlineInputBorder(),
    
              ),
            ),
            
            const SizedBox( height: formHeight ),
    
            TextFormField(
    
              decoration: const InputDecoration(
                prefixIcon: Icon( Icons.fingerprint ),
                labelText: password,
                hintText: password,
                border: OutlineInputBorder(),
                suffixIcon: IconButton(
                  onPressed: null, 
                  icon: Icon(Icons.remove_red_eye_sharp
                  )
                )
              ),
            ),
    
            const SizedBox( height: formHeight - 20 ),
    
            // FORGET PASSWORD BTN ----------------------------------

            Align(
              alignment: Alignment.centerRight,
              child: TextButton(
                onPressed: () {
                  ForgetPasswordScreen.buildShowModalBottomSheet(context); //* EXTRAJE MÉTODO y lo sobreescribió como FUTURE
                },
                child: const Text( forgetPassword ),
              ),
            ),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton( 
                onPressed: () { Get.to( () => const DashboardScreen()); },  //! Cambiamos de pantalla
                child: Text( login.toUpperCase() ),
                ),
            ),
    
          ],
        ),
      )
    );
  }
}
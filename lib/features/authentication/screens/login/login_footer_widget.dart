import 'package:flutter/material.dart';
import 'package:login/constants/image_strings.dart';
import 'package:login/constants/sizes.dart';
import 'package:login/constants/text_strings.dart';

class LoginFooterWidget extends StatelessWidget {
  const LoginFooterWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        const Text("OR"),
    
        const SizedBox( height: formHeight - 20),
    
        SizedBox(
          width: double.infinity,
          child: OutlinedButton.icon(
            icon: const Image( image: AssetImage( googleLogoImage ), width: 20),
            onPressed: () {}, 
            label: const Text( singInWithGoogle ),
            ),
        ),
    
        const SizedBox( height: formHeight - 20),
    
        TextButton(
          onPressed: () {}, 
          child: Text.rich(
            TextSpan(
              text: dontHaveAnAcount,
              style: Theme.of(context).textTheme.bodyLarge,
              children: const [
                TextSpan(
                  text: signup,
                  style: TextStyle( color: Colors.blue ),
                )
              ]
            )
          )
          )
      ],
    );
  }
}
import 'package:flutter/material.dart';
import 'package:login/constants/sizes.dart';
import 'package:login/constants/text_strings.dart';


class SignUpFormWidget extends StatelessWidget {
  const SignUpFormWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
            padding: const EdgeInsets.symmetric( vertical: formHeight - 10 ),
            child: Form(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
    
                  TextFormField(
                    decoration: const InputDecoration(
                      label: Text( fullName ), //! unas propiedades no se pudieron agregar en e
                      prefixIcon: Icon( Icons.person_outline_rounded ),
                    )
                  ),
    
                  const SizedBox( height: formHeight - 20 ),
    
                  TextFormField(
                    decoration: const InputDecoration(
                      label: Text( email ), //! unas propiedades no se pudieron agregar en e
                      prefixIcon: Icon( Icons.email_outlined ),
                    )
                  ),
    
                  const SizedBox( height: formHeight - 20 ),
    
                  TextFormField(
                    decoration: const InputDecoration(
                      label: Text( phone ), //! unas propiedades no se pudieron agregar en e
                      prefixIcon: Icon( Icons.phone_android_outlined ),
                    )
                  ),
                  
                  const SizedBox( height: formHeight - 20 ),
                  
                  TextFormField(
                    decoration: const InputDecoration(
                      label: Text( password ), //! unas propiedades no se pudieron agregar en e
                      prefixIcon: Icon( Icons.fingerprint ),
                    )
                  ),
    
                  const SizedBox( height: formHeight ),
    
                  SizedBox(
                    width: double.infinity,
                    child: ElevatedButton(
                      onPressed: () {}, 
                      child: Text( signup.toUpperCase() )
                    ),
                  ),
                ],
              )
            ),
          );
  }
}
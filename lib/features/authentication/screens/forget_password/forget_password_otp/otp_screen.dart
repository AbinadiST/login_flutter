import 'package:flutter/material.dart';
import 'package:flutter_otp_text_field/flutter_otp_text_field.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:login/constants/sizes.dart';
import 'package:login/constants/text_strings.dart';



class OTPScreen extends StatelessWidget {
  const OTPScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.all( defaultSize ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center, //! Aparecerá centro pantalla, de arriba y abajo como izq a der
          children: [
            Text( otpTitle, style: GoogleFonts.raleway( 
              fontWeight: FontWeight.bold,
              fontSize: 80.0,
            ), 
          ),
            Text( otpSubTitle.toUpperCase(), style: Theme.of(context).textTheme.headlineSmall, ),
            
            const SizedBox( height: 40.0 ),

            Text( '${otpMessage}support@codingwitht.com', 
            style: Theme.of(context).textTheme.bodyMedium, 
            textAlign: TextAlign.center, ),

            const SizedBox( height: 20 ),

            OtpTextField(  //! OPT TEXT FIELD con 6 campos ------------
              numberOfFields: 6,
              fillColor: Colors.black.withOpacity(0.1),
              filled: true,
              onSubmit: ( code ) { print('OTP is => $code '); },
            ),

            const SizedBox( height: 20 ),

            SizedBox(
              width: double.infinity,
              child: ElevatedButton(onPressed: () {
                
                }, 
                child: Text( next.toUpperCase() )
              ),
            )
          ],
        ),
      ),
    );
  }
}
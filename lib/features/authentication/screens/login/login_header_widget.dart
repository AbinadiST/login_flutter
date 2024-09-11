import 'package:flutter/material.dart';
import 'package:login/constants/image_strings.dart';
import 'package:login/constants/text_strings.dart';


class LoginHeaderWidget extends StatelessWidget {
  const  LoginHeaderWidget({
    super.key,
    required this.size,
  });

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Image( 
          image: const AssetImage( welcomeScreenImage2 ),
          height: size.height * 0.2,
        ),
         Text( loginTitle, style: Theme.of(context).textTheme.headlineLarge ),
         Text( loginSubTitle, style: Theme.of(context).textTheme.bodyLarge, ),
      ],
    );
  }
}
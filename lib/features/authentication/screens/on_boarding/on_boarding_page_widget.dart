import 'package:flutter/material.dart';
import 'package:login/constants/sizes.dart';
import 'package:login/features/authentication/models/model_on_boarding.dart';


// Diseño del LIQUID SWIPE ------------------------------------------------------------


class OnBoardingPageWidget extends StatelessWidget {
  const OnBoardingPageWidget({
    super.key,
    required this.model,
  });

  final OnBoardingModel model; //* Instancia para acceder a las ENTITIES ****

  @override
  Widget build(BuildContext context) {

    final size = MediaQuery.of(context).size; //! se puede configurar altura en pantalla

    return Container( 
      padding: const EdgeInsets.all( defaultSize ),
      color: model.bgColor,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly, //? varias opciones checar ***  
        children: [
          Image(
            image: AssetImage( model.image ),
            height: size.height * 0.5, //! Reducir la imagen de altura a la mitad de pantalla
          ),
          Column(  //* Esta columna elimina el SPACEEVENLY de la COLUMNA de arriba
            children: [
              Text(
                model.title,
                style: Theme.of(context).textTheme.headlineMedium,
              ),
              Text(
                model.subTitle,
                style: Theme.of(context).textTheme.bodyLarge,
                textAlign: TextAlign.center,
              ),  
            ],
          ),
          Text(
            model.counterText,
            style: Theme.of(context).textTheme.headlineLarge,
          ),
    
          const SizedBox( height: 90 ),

        ],
      ),
    );
  }
}
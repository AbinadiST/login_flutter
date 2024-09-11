import 'package:flutter/material.dart';

class ForgetPasswordBtnWidget extends StatelessWidget {
  const ForgetPasswordBtnWidget({

    super.key, 
    required this.btnIcon, 
    required this.title, 
    required this.subTitle,
    required this.onTap,

  });

  final IconData btnIcon;
  final String title, subTitle;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.all( 20 ),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular( 10 ),
          color: Colors.grey.shade200
        ),
        child: FittedBox( //! Ajusta elementos que no caben en pantalla chica, pero cubre toda la pantalla ej. en tablet
        fit: BoxFit.scaleDown, //! Ajusta elementos a dispositivos, si es tablet, elementos conservan tamaño original,
          child: Row(
            children: [
              Icon( btnIcon, size: 60.0 ),
          
              const SizedBox( width: 10 ), 
              
              Column(
                children: [
                  Text( title, style: Theme.of(context).textTheme.headlineSmall ),
                  Text( subTitle, style: Theme.of(context).textTheme.bodyLarge ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
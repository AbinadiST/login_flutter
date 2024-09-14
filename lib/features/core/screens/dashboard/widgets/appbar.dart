import 'package:flutter/material.dart';
import 'package:login/constants/colors.dart';
import 'package:login/constants/image_strings.dart';
import 'package:login/constants/text_strings.dart';

class DashboardAppBar extends StatelessWidget implements PreferredSizeWidget{
  const DashboardAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return AppBar(
    
      leading: const Icon( Icons.menu, color: Colors.black ), //* Iconó se agrega a la izq
      title: Text( appName, style: Theme.of(context).textTheme.bodyMedium ),
      centerTitle: true,
      elevation: 0,
      backgroundColor: Colors.transparent,
      actions: [  //* iconos se agregan a la derecha
        Container(
          margin: const EdgeInsets.only( right: 20, top: 7 ), //* icono se agranda/ se achica dependiendo del TOP
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular( 10 ), 
            color: cardBgColor
          ),
          child: IconButton(onPressed: () {
            
          }, 
            icon: const Image( image: AssetImage( userProfileImage )
            )
          ),
        )
      ],
    );
  }
  
  @override
  // TODO: implement preferredSize
  Size get preferredSize => const Size.fromHeight( 55 );
}
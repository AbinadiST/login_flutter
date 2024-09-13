import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:login/constants/colors.dart';
import 'package:login/constants/image_strings.dart';
import 'package:login/constants/sizes.dart';
import 'package:login/constants/text_strings.dart';


class DashboardScreen extends StatelessWidget {
  const DashboardScreen({super.key});

  @override
  Widget build(BuildContext context) {

    final txtTheme = Theme.of(context).textTheme; //* Al repeterise, podemos reducir código

    return Scaffold(

      appBar: AppBar(

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
      ),

      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all( dashboardPadding ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text( dashboardTitle, style: txtTheme.bodyLarge ),
              Text( dashboardHeading, style: txtTheme.headlineMedium ),
              const SizedBox( height: dashboardPadding ),

              // SEARCH box -------------------

              Container(
                decoration: const BoxDecoration( //* Se obtiene el bordo del lado izq en el SEARCH
                  border: Border( left: BorderSide( width: 4)
                  )
                ),
                padding: const EdgeInsets.symmetric( horizontal: 10, vertical: 5 ), //*  Se agranda el campo SEARCH
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,  //* separa elementos de lado a lado
                  children: [
                    Text( 
                      dashboardSearch, 
                      style: txtTheme.headlineMedium?.apply( color: Colors.grey.withOpacity( 0.5 ) //* Marca opacidad en palabra SEARCH
                      )
                    ),
                    const Icon( Icons.mic, size: 25 ),
                  ],
                ),
              ),
              const SizedBox( height: dashboardPadding ),

              // Categories ---------------------

              SizedBox(
                height: 45,
                child: ListView(
                  shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  children: [
                    SizedBox( 
                      width: 170,
                      height: 45,
                      child: Row(
                        children: [
                          Container(
                            width: 45,
                            height: 45,
                            decoration: BoxDecoration( 
                              borderRadius: BorderRadius.circular( 10 ), 
                              color: darkColor
                              ),
                            child: Center(
                              child: Text( 'JS', style: txtTheme.bodyMedium?.apply( color: Colors.white )
                              ),
                            ),
                          ),
                    
                          const SizedBox( width: 5),
                    
                          Flexible(  //! Al sobrepasar pixeles, agrega 3 puntos
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  'Java Script', 
                                  style: txtTheme.bodyMedium,
                                  overflow: TextOverflow.ellipsis 
                                  ),
                                Text(
                                  '10 Lessons', 
                                  style: txtTheme.bodySmall,
                                  overflow: TextOverflow.ellipsis 
                                  ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),

                    SizedBox(
                height: 45,
                child: ListView(
                  shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  children: [
                    SizedBox( 
                      width: 170,
                      height: 45,
                      child: Row(
                        children: [
                          Container(
                            width: 45,
                            height: 45,
                            decoration: BoxDecoration( 
                              borderRadius: BorderRadius.circular( 10 ), 
                              color: darkColor
                              ),
                            child: Center(
                              child: Text( 'JS', style: txtTheme.bodyMedium?.apply( color: Colors.white )
                              ),
                            ),
                          ),
                    
                          const SizedBox( width: 5),
                    
                          Flexible(  //! Al sobrepasar pixeles, agrega 3 puntos
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  'Java Script', 
                                  style: txtTheme.bodyMedium,
                                  overflow: TextOverflow.ellipsis 
                                  ),
                                Text(
                                  '10 Lessons', 
                                  style: txtTheme.bodySmall,
                                  overflow: TextOverflow.ellipsis 
                                  ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),

              SizedBox(
                height: 45,
                child: ListView(
                  shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  children: [
                    SizedBox( 
                      width: 170,
                      height: 45,
                      child: Row(
                        children: [
                          Container(
                            width: 45,
                            height: 45,
                            decoration: BoxDecoration( 
                              borderRadius: BorderRadius.circular( 10 ), 
                              color: darkColor
                              ),
                            child: Center(
                              child: Text( 'JS', style: txtTheme.bodyMedium?.apply( color: Colors.white )
                              ),
                            ),
                          ),
                    
                          const SizedBox( width: 5),
                    
                          Flexible(  //! Al sobrepasar pixeles, agrega 3 puntos
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  'Java Script', 
                                  style: txtTheme.bodyMedium,
                                  overflow: TextOverflow.ellipsis 
                                  ),
                                Text(
                                  '10 Lessons', 
                                  style: txtTheme.bodySmall,
                                  overflow: TextOverflow.ellipsis 
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),

        const SizedBox( height: dashboardPadding ),

        // BANNERS -------------------------------------

            Row(
              crossAxisAlignment: CrossAxisAlignment.start,  //* lo coloca hacia arriba
              children: [
                Expanded(
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular( 10 ),
                      color: cardBgColor,
                    ),
                    padding: const EdgeInsets.symmetric( horizontal: 10, vertical: 20 ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,   //* Para separarlos hacia los laterales
                          children: [
                            Flexible(child: Image(image: AssetImage( bookMarkIcon ) )), //* Para ajustar imagen si no cabe
                            Flexible(child: Image(image: AssetImage( bannerImage1 ) )),
                          ],
                        ),
                        const SizedBox( height: 25 ),

                        Text( dashboardBannerTitle1, style: txtTheme.bodyLarge, maxLines: 2, overflow: TextOverflow.ellipsis, ),
                        Text( dashboardBannerSubTitle, style: txtTheme.bodyMedium, maxLines: 1, overflow: TextOverflow.ellipsis, ),

                        ],
                      ),
                    ),
                  ),
                  const SizedBox( width: dashboardCardPadding ),
                  Expanded(
                    child: Column(
                      children: [
                        Container(
                          decoration: BoxDecoration( borderRadius: BorderRadius.circular( 10 ), color: cardBgColor ),
                          padding: const EdgeInsets.symmetric( horizontal: 10, vertical: 20 ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                            const Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,   //* Para separarlos hacia los laterales
                              children: [
                                Flexible(child: Image(image: AssetImage( bookMarkIcon ) )), //* Para ajustar imagen si no cabe
                                Flexible(child: Image(image: AssetImage( bannerImage2 ) )),
                              ],
                            ),

                            Text( dashboardBannerTitle2, style: txtTheme.bodyLarge, overflow: TextOverflow.ellipsis, ),
                            Text( dashboardBannerSubTitle, style: txtTheme.bodyMedium, overflow: TextOverflow.ellipsis, ),

                            ],
                          ),
                        ),
                        SizedBox(
                          width: double.infinity,
                          child: OutlinedButton(
                            onPressed: () {}, 
                            child: const Text( dashboardButton )
                            ),
                        )
                      ],
                    )
                  ),
                ],
              ),

              // TOP COURSE --------------------------

              Text( dashboardTopCourses, style: txtTheme.headlineSmall?.apply( fontSizeFactor: 1.2) ), //* 1.2 indica fontSize 18 * 12
              SizedBox(
                width: 320,
                height: 200,
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular( 10 ), 
                    color: cardBgColor
                  ),
                  padding: const EdgeInsets.all( 10 ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Text( 'Flutter Crash Course ', 
                          style: txtTheme.bodyLarge,
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                          ),
                          const Image(image: AssetImage( topCourseImage1 ), height: 110)
                        ],
                      )
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
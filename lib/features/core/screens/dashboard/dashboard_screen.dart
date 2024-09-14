import 'package:flutter/material.dart';
import 'package:login/constants/colors.dart';
import 'package:login/constants/image_strings.dart';
import 'package:login/constants/sizes.dart';
import 'package:login/constants/text_strings.dart';
import 'package:login/features/core/screens/dashboard/widgets/appbar.dart';
import 'package:login/features/core/screens/dashboard/widgets/categories.dart';


class DashboardScreen extends StatelessWidget {
  const DashboardScreen({super.key});

  @override
  Widget build(BuildContext context) {

    final txtTheme = Theme.of(context).textTheme; //* Al repeterise, podemos reducir código

    return Scaffold(

      appBar: const DashboardAppBar(),

      body: SingleChildScrollView(

        child: Container(
          padding: const EdgeInsets.all( dashboardPadding ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              
              //Headign ----------------------

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

            DashboardCategories(textTheme: txtTheme),
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
                height: 200,
                child: ListView(  //! envolvemos con COLUMN y luego sobreescribimos con LISTVIEW para que aparezca el CHILDREN
                  shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  children: [
                    SizedBox(
                      width: 320,
                      height: 200,
                      child: Padding(
                        padding: const EdgeInsets.only( right: 10, top: 5 ),
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
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Flexible(
                                    child: Text( 'Flutter Crash Course ', //! Texto se ajusta al espacio
                                    style: txtTheme.bodyLarge,
                                    maxLines: 2,
                                    overflow: TextOverflow.ellipsis,
                                    ),
                                  ),
                                  const Flexible (child: Image(image: AssetImage( topCourseImage1 ), height: 110)) //! Imagen se ajusta al espacio
                                ],
                              ),
                              Row(
                                children: [
                                            
                                  // Boton negro con diseño de PLAY -------------------------------
                                  ElevatedButton(
                                    style: ElevatedButton.styleFrom( shape: const CircleBorder() ),
                                    onPressed: () {}, 
                                    child: const Icon( Icons.play_arrow )
                                    ),
                                  
                                  const SizedBox( height: dashboardCardPadding ),
                                            
                                  Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text( '3 Sections', style: txtTheme.bodyLarge, overflow: TextOverflow.ellipsis ),
                                      Text( 'Programming Language', style: txtTheme.bodyLarge, overflow: TextOverflow.ellipsis ),
                                    ],
                                  )
                                ],
                              )
                            ],
                          ),
                        ),
                      ),
                    ),

                    // LIST VIEW en horizontal  -------------------------------------------------
                    SizedBox(
                      width: 320,
                      height: 200,
                      child: Padding(
                        padding: const EdgeInsets.only( right: 10, top: 5 ),
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
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Flexible(
                                    child: Text( 'Flutter Crash Course ', //! Texto se ajusta al espacio
                                    style: txtTheme.bodyLarge,
                                    maxLines: 2,
                                    overflow: TextOverflow.ellipsis,
                                    ),
                                  ),
                                  const Flexible (child: Image(image: AssetImage( topCourseImage1 ), height: 110)) //! Imagen se ajusta al espacio
                                ],
                              ),
                              Row(
                                children: [
                                            
                                  // Boton negro con diseño de PLAY -------------------------------
                                  ElevatedButton(
                                    style: ElevatedButton.styleFrom( shape: const CircleBorder() ),
                                    onPressed: () {}, 
                                    child: const Icon( Icons.play_arrow )
                                    ),
                                  
                                  const SizedBox( height: dashboardCardPadding ),
                                            
                                  Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text( '3 Sections', style: txtTheme.bodyLarge, overflow: TextOverflow.ellipsis ),
                                      Text( 'Programming Language', style: txtTheme.bodyLarge, overflow: TextOverflow.ellipsis ),
                                    ],
                                  )
                                ],
                              )
                            ],
                          ),
                        ),
                      ),
                    ),

                    SizedBox(
                      width: 320,
                      height: 200,
                      child: Padding(
                        padding: const EdgeInsets.only( right: 10, top: 5 ),
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
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Flexible(
                                    child: Text( 'Flutter Crash Course ', //! Texto se ajusta al espacio
                                    style: txtTheme.bodyLarge,
                                    maxLines: 2,
                                    overflow: TextOverflow.ellipsis,
                                    ),
                                  ),
                                  const Flexible (child: Image(image: AssetImage( topCourseImage1 ), height: 110)) //! Imagen se ajusta al espacio
                                ],
                              ),
                              Row(
                                children: [
                                            
                                  // Boton negro con diseño de PLAY -------------------------------
                                  ElevatedButton(
                                    style: ElevatedButton.styleFrom( shape: const CircleBorder() ),
                                    onPressed: () {}, 
                                    child: const Icon( Icons.play_arrow )
                                    ),
                                  
                                  const SizedBox( height: dashboardCardPadding ),
                                            
                                  Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text( '3 Sections', style: txtTheme.bodyLarge, overflow: TextOverflow.ellipsis ),
                                      Text( 'Programming Language', style: txtTheme.bodyLarge, overflow: TextOverflow.ellipsis ),
                                    ],
                                  )
                                ],
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

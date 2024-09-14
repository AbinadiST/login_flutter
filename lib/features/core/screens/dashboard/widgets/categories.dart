import 'package:flutter/material.dart';
import 'package:login/constants/colors.dart';
import 'package:login/features/core/models/dashboard/categories_model.dart';

class DashboardCategories extends StatelessWidget {
  const DashboardCategories({
    super.key,
    required this.textTheme,
    });

  final TextTheme textTheme;

  @override
  Widget build(BuildContext context) {

    final list = DashboardCategoriesModel.list; 
    //* Se cambio nombre a DASHBOARDCATEGORIESMODEL evitar duplicidad con esta clase DASHBOARDCATEGORIES

    return SizedBox(
                height: 45,
                child: ListView.builder(
                  itemCount: list.length,
                  shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) => GestureDetector(
                    onTap: list[index].onPress,
                    child: SizedBox( 
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
                                child: Text( list[index].title, style: textTheme.bodyMedium?.apply( color: Colors.white )
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
                                    list[index].heading, 
                                    style: textTheme.bodyMedium,
                                    overflow: TextOverflow.ellipsis 
                                    ),
                                  Text(
                                    list[index].subHeading, 
                                    style: textTheme.bodySmall,
                                    overflow: TextOverflow.ellipsis 
                                    ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                  ),
                    
            //       children: [
            //         SizedBox( 
            //           width: 170,
            //           height: 45,
            //           child: Row(
            //             children: [
            //               Container(
            //                 width: 45,
            //                 height: 45,
            //                 decoration: BoxDecoration( 
            //                   borderRadius: BorderRadius.circular( 10 ), 
            //                   color: darkColor
            //                   ),
            //                 child: Center(
            //                   child: Text( 'JS', style: textTheme.bodyMedium?.apply( color: Colors.white )
            //                   ),
            //                 ),
            //               ),
                    
            //               const SizedBox( width: 5),
                    
            //               Flexible(  //! Al sobrepasar pixeles, agrega 3 puntos
            //                 child: Column(
            //                   crossAxisAlignment: CrossAxisAlignment.start,
            //                   mainAxisAlignment: MainAxisAlignment.center,
            //                   children: [
            //                     Text(
            //                       'Java Script', 
            //                       style: textTheme.bodyMedium,
            //                       overflow: TextOverflow.ellipsis 
            //                       ),
            //                     Text(
            //                       '10 Lessons', 
            //                       style: textTheme.bodySmall,
            //                       overflow: TextOverflow.ellipsis 
            //                       ),
            //                   ],
            //                 ),
            //               ),
            //             ],
            //           ),
            //         ),

            //         SizedBox(
            //     height: 45,
            //     child: ListView(
            //       shrinkWrap: true,
            //       scrollDirection: Axis.horizontal,
            //       children: [
            //         SizedBox( 
            //           width: 170,
            //           height: 45,
            //           child: Row(
            //             children: [
            //               Container(
            //                 width: 45,
            //                 height: 45,
            //                 decoration: BoxDecoration( 
            //                   borderRadius: BorderRadius.circular( 10 ), 
            //                   color: darkColor
            //                   ),
            //                 child: Center(
            //                   child: Text( 'JS', style: textTheme.bodyMedium?.apply( color: Colors.white )
            //                   ),
            //                 ),
            //               ),
                    
            //               const SizedBox( width: 5),
                    
            //               Flexible(  //! Al sobrepasar pixeles, agrega 3 puntos
            //                 child: Column(
            //                   crossAxisAlignment: CrossAxisAlignment.start,
            //                   mainAxisAlignment: MainAxisAlignment.center,
            //                   children: [
            //                     Text(
            //                       'Java Script', 
            //                       style: textTheme.bodyMedium,
            //                       overflow: TextOverflow.ellipsis 
            //                       ),
            //                     Text(
            //                       '10 Lessons', 
            //                       style: textTheme.bodySmall,
            //                       overflow: TextOverflow.ellipsis 
            //                       ),
            //                   ],
            //                 ),
            //               ),
            //             ],
            //           ),
            //         ),
            //       ],
            //     ),
            //   ),

            //   SizedBox(
            //     height: 45,
            //     child: ListView(
            //       shrinkWrap: true,
            //       scrollDirection: Axis.horizontal,
            //       children: [
            //         SizedBox( 
            //           width: 170,
            //           height: 45,
            //           child: Row(
            //             children: [
            //               Container(
            //                 width: 45,
            //                 height: 45,
            //                 decoration: BoxDecoration( 
            //                   borderRadius: BorderRadius.circular( 10 ), 
            //                   color: darkColor
            //                   ),
            //                 child: Center(
            //                   child: Text( 'JS', style: textTheme.bodyMedium?.apply( color: Colors.white )
            //                   ),
            //                 ),
            //               ),
                    
            //               const SizedBox( width: 5),
                    
            //               Flexible(  //! Al sobrepasar pixeles, agrega 3 puntos
            //                 child: Column(
            //                   crossAxisAlignment: CrossAxisAlignment.start,
            //                   mainAxisAlignment: MainAxisAlignment.center,
            //                   children: [
            //                     Text(
            //                       'Java Script', 
            //                       style: textTheme.bodyMedium,
            //                       overflow: TextOverflow.ellipsis 
            //                       ),
            //                     Text(
            //                       '10 Lessons', 
            //                       style: textTheme.bodySmall,
            //                       overflow: TextOverflow.ellipsis 
            //                     ),
            //                   ],
            //                 ),
            //               ),
            //             ],
            //           ),
            //         ),
            //       ],
            //     ),
            //   ),
            // ],
          ),
        );
  }
}
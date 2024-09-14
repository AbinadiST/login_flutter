import 'package:flutter/material.dart';


class DashboardCategoriesModel{
  final String title;
  final String heading;
  final String subHeading;
  final VoidCallback? onPress;

  DashboardCategoriesModel(
    this.title, 
    this.heading,
    this.subHeading,
    this.onPress
  );

  static List<DashboardCategoriesModel> list = [
    DashboardCategoriesModel('JS', 'JavaScript', '10 Lesons', null),
    DashboardCategoriesModel('F', 'Flutter', '11 Lessons', null),
    DashboardCategoriesModel('H', 'HTML', '8 Lessons', null),
    DashboardCategoriesModel('K', 'Kotlin', '20 Lessons', null),
    DashboardCategoriesModel('P', 'Pyton', '100 Lessons', null),
  ];
}
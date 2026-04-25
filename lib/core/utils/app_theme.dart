import 'package:flutter/material.dart';
import 'package:news_app/core/utils/app_color.dart';
import 'package:news_app/core/utils/app_style_light_dark.dart';

abstract class AppTheme {

  static ThemeData lightTheme = ThemeData(
    scaffoldBackgroundColor: AppColor.white,
    appBarTheme: AppBarThemeData(
      iconTheme: IconThemeData(color: AppColor.black),
      backgroundColor: AppColor.white,
      titleTextStyle: AppStyle.med20Black,
      centerTitle: true,
    ),
    iconTheme: IconThemeData(color: AppColor.black, size: 24),
    dialogTheme: DialogThemeData(
      backgroundColor: AppColor.black,
      elevation: 0,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadiusGeometry.circular(16),
      ),
    ),
    dividerTheme: DividerThemeData(color: AppColor.black),
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        textStyle: AppStyle.bold16Black,
        backgroundColor: AppColor.white,
        foregroundColor: AppColor.black,
        elevation: 0,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadiusGeometry.circular(8),
        ),
      ),
    ),
    drawerTheme: DrawerThemeData(
      elevation: 0,
      backgroundColor: AppColor.red,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadiusGeometry.circular(0),
      ),
    ),
  );




  static ThemeData darkTheme = ThemeData(
    scaffoldBackgroundColor: AppColor.black,
    appBarTheme: AppBarThemeData(
      iconTheme: IconThemeData(color: AppColor.white),
      backgroundColor: AppColor.black,
      titleTextStyle: AppStyle.med20White,
      centerTitle: true,
    ),
    iconTheme: IconThemeData(color: AppColor.white, size: 24),
    dialogTheme: DialogThemeData(
      backgroundColor: AppColor.white,
      elevation: 0,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadiusGeometry.circular(16),
      ),
    ),
    dividerTheme: DividerThemeData(color: AppColor.white),
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        textStyle: AppStyle.bold16White,
        backgroundColor: AppColor.black,
        foregroundColor: Colors.white,
        elevation: 0,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadiusGeometry.circular(8),
        ),
      ),
    ),
    drawerTheme: DrawerThemeData(
      elevation: 0,
      backgroundColor: AppColor.black,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadiusGeometry.circular(0),
      ),
    ),
  );
}

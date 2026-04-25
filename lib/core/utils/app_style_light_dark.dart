import 'package:flutter/src/painting/text_style.dart';
import 'package:google_fonts/google_fonts.dart';

import 'app_color.dart';

abstract class AppStyle {
  static final TextStyle med20Black = GoogleFonts.inter(
    textStyle: TextStyle(
      color: AppColor.black,
      fontSize: 20,
      fontWeight: .w500,
    ),
  );

  static final TextStyle med24Black = GoogleFonts.inter(
    textStyle: TextStyle(
      color: AppColor.black,
      fontSize: 24,
      fontWeight: .w500,
    ),
  );

  static final TextStyle med24White = GoogleFonts.inter(
    textStyle: TextStyle(
      color: AppColor.white,
      fontSize: 24,
      fontWeight: .w500,
    ),
  );

  static final TextStyle med30White = GoogleFonts.inter(
    textStyle: TextStyle(
      color: AppColor.white,
      fontSize: 30,
      fontWeight: .w500,
    ),
  );

  static final TextStyle med30Black = GoogleFonts.inter(
    textStyle: TextStyle(
      color: AppColor.black,
      fontSize: 30,
      fontWeight: .w500,
    ),
  );

  static final TextStyle med20White = GoogleFonts.inter(
    textStyle: TextStyle(
      color: AppColor.white,
      fontSize: 20,
      fontWeight: .w500,
    ),
  );

  static final TextStyle med14White = GoogleFonts.inter(
    textStyle: TextStyle(
      color: AppColor.white,
      fontSize: 14,
      fontWeight: .w500,
    ),
  );

  static final TextStyle med14Black = GoogleFonts.inter(
    textStyle: TextStyle(
      color: AppColor.black,
      fontSize: 14,
      fontWeight: .w500,
    ),
  );

  static final TextStyle bold24Black = GoogleFonts.inter(
    textStyle: TextStyle(
      color: AppColor.black,
      fontSize: 24,
      fontWeight: .bold,
    ),
  );

  static final TextStyle bold20White = GoogleFonts.inter(
    textStyle: TextStyle(
      color: AppColor.white,
      fontSize: 20,
      fontWeight: .bold,
    ),
  );

  static final TextStyle bold16Black = GoogleFonts.inter(
    textStyle: TextStyle(
      color: AppColor.black,
      fontSize: 16,
      fontWeight: .bold,
    ),
  );

  static final TextStyle bold16White = GoogleFonts.inter(
    textStyle: TextStyle(
      color: AppColor.white,
      fontSize: 16,
      fontWeight: .bold,
    ),
  );
}

import 'package:flutter/cupertino.dart';

abstract class AppImage {
  static final Image business = Image.asset('assets/images/business.png');
  static final Image businessDark = Image.asset(
    'assets/images/businessDark.png',
  );

  static final Image entertainment = Image.asset(
    'assets/images/entertainment.png',
  );
  static final Image entertainmentDark = Image.asset(
    'assets/images/entertainmentDark.png',
  );

  static final Image general = Image.asset('assets/images/general.png');
  static final Image generalDark = Image.asset('assets/images/generalDark.png');

  static final Image health = Image.asset('assets/images/health.png');
  static final Image healthDark = Image.asset('assets/images/healthDark.png');

  static final Image science = Image.asset('assets/images/science.png');
  static final Image scienceDark = Image.asset('assets/images/scienceDark.png');

  static final Image sport = Image.asset('assets/images/sport.png');
  static final Image sportDark = Image.asset('assets/images/sportDark.png');

  static final Image technology = Image.asset('assets/images/technology.png');
  static final Image technologyDark = Image.asset(
    'assets/images/technologyDark.png',
  );
}

import 'package:flutter/cupertino.dart';

abstract class AppImage {

  static final Image business = Image.asset('assets/images/business.png',
    fit: .fill,);
  static final Image businessDark = Image.asset(
    'assets/images/businessDark.png',
    fit: .fill,
  );

  static final Image entertainment = Image.asset(
    'assets/images/entertainment.png',
    fit: .fill,
  );
  static final Image entertainmentDark = Image.asset(
    'assets/images/entertainmentDark.png',
    fit: .fill,
  );

  static final Image general = Image.asset('assets/images/general.png',
  fit: .fill,);
  static final Image generalDark = Image.asset('assets/images/generalDark.png',
    fit: .fill,);

  static final Image health = Image.asset('assets/images/health.png',
    fit: .fill,);
  static final Image healthDark = Image.asset('assets/images/healthDark.png',
    fit: .fill,);

  static final Image science = Image.asset('assets/images/science.png',
    fit: .fill,);
  static final Image scienceDark = Image.asset('assets/images/scienceDark.png',
    fit: .fill,);

  static final Image sport = Image.asset('assets/images/sport.png',
    fit: .fill,);
  static final Image sportDark = Image.asset('assets/images/sportDark.png',
    fit: .fill,);

  static final Image technology = Image.asset('assets/images/technology.png',
    fit: .fill,);
  static final Image technologyDark = Image.asset(
    'assets/images/technologyDark.png',
    fit: .fill,
  );
}

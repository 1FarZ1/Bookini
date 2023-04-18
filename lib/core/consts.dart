import 'package:flutter/cupertino.dart';

class AppConsts {
  static Color kPrimaryColor = const Color(0xff100B20);
  static Duration kTranstionDuration = const Duration(milliseconds: 250);
  static String kGtSectraFine = 'GT Sectra Fine';
}

class AssetsData {
  static const logo = 'assets/images/Logo.png';
  static const testImage = 'assets/images/test_image.png';
}

abstract class Styles {
  static const textStyle18 = TextStyle(
    fontSize: 18,
    fontWeight: FontWeight.w600,
  );
  static const textStyle20 = TextStyle(
    fontSize: 20,
    fontWeight: FontWeight.normal,
  );
  static TextStyle textStyle30 = TextStyle(
    fontSize: 30,
    fontWeight: FontWeight.w900,
    fontFamily: AppConsts.kGtSectraFine,
    letterSpacing: 1.2,
  );
  static const textStyle14 = TextStyle(
    fontSize: 14,
    fontWeight: FontWeight.normal,
  );

  static const textStyle16 = TextStyle(
    fontSize: 16,
    fontWeight: FontWeight.w500,
  );
}

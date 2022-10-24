import 'package:flutter/material.dart';

class UIConstant {
  static const String appName = "Cô Tấm";
}

class AppColor {
  static const Color primaryColor100 = Color(0xFF15BF81);
  static const Color primaryColor50 = Color(0x8015BF81);
  static const Color primaryColor30 = Color(0x4D15BF81);
  static const Color primaryColor10 = Color(0x1A15BF81);
  static const Color secondaryColor100 = Color(0xFFFFFFFF);
  static const Color secondaryColor50 = Color(0x80FFFFFF);
  static const Color secondaryColor30 = Color(0x4DFFFFFF);
  static const Color secondaryColor10 = Color(0x1AFFFFFF);
  static const Color subColor100 = Color(0xFF000000);
  static const Color subColor50 = Color(0x80000000);
  static const Color subColor30 = Color(0x4D000000);
  static const Color subColor10 = Color(0x1A000000);
}

class AppResource {
  static const String logo = 'assets/img/logo.png';
}

class AppString {
  static const String loginSuccessfull = 'Đăng nhập thành công';
}

class AppText {
  static const headingLarge = TextStyle(
      fontWeight: FontWeight.w400,
      fontSize: 26,
      fontStyle: FontStyle.normal,
      color: AppColor.primaryColor100);
  static const headingSmall = TextStyle(
      fontWeight: FontWeight.w400,
      fontSize: 18,
      fontStyle: FontStyle.normal,
      color: AppColor.primaryColor100);
  static const headingSmall2 = TextStyle(
      fontWeight: FontWeight.w500,
      fontSize: 13,
      fontStyle: FontStyle.normal,
      color: AppColor.primaryColor100);
  static const text = TextStyle(
      fontWeight: FontWeight.w400,
      fontSize: 12,
      fontStyle: FontStyle.normal,
      color: AppColor.primaryColor100);


  static const textBlack = TextStyle(
      fontWeight: FontWeight.w400,
      fontSize: 12,
      fontStyle: FontStyle.normal,
      color: AppColor.subColor100);
  static const textBlack2 = TextStyle(
      fontWeight: FontWeight.w400,
      fontSize: 14,
      fontStyle: FontStyle.normal,
      color: AppColor.subColor100);
  static const textBlack3 = TextStyle(
      fontWeight: FontWeight.w500,
      fontSize: 16,
      fontStyle: FontStyle.normal,
      color: AppColor.subColor100);


  static const textGrey = TextStyle(
      fontWeight: FontWeight.w400,
      fontSize: 12,
      fontStyle: FontStyle.normal,
      color: Colors.grey);
  static const textGrey2 = TextStyle(
      fontWeight: FontWeight.w400,
      fontSize: 12,
      fontStyle: FontStyle.italic,
      color: Colors.grey);


  static const textWhite1 = TextStyle(
      fontWeight: FontWeight.w400,
      fontSize: 12,
      fontStyle: FontStyle.normal,
      color: Colors.white);
}

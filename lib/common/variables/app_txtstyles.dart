import 'package:finance_app/common/variables/app_colors.dart';
import 'package:flutter/material.dart';
import 'dart:ui';

class AppTxtStyles {
  AppTxtStyles._();

  static const TextStyle logoTxt = TextStyle(
    fontSize: 40.0,
    fontWeight: FontWeight.w900,
  );

  static const TextStyle charTxt = TextStyle(
    fontSize: 35.0,
    fontWeight: FontWeight.w900,
    color: AppColors.Redbase,
  );

  static const TextStyle smallTxtDark = TextStyle(
    fontSize: 12.0,
    fontWeight: FontWeight.w400,
    color: Color.fromARGB(255, 0, 0, 0),
  );

  static const TextStyle smallTxtWhite = TextStyle(
    fontSize: 12.0,
    fontWeight: FontWeight.w700,
    color: Colors.white,
  );

  static const TextStyle meddiumTxtWhite = TextStyle(
    fontSize: 18.0,
    fontWeight: FontWeight.w700,
    color: Colors.white,
  );
}

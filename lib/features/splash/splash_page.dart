import 'package:Charbook/common/variables/app_colors.dart';
//import 'package:Charbook/common/variables/app_txtstyles.dart';
import 'package:flutter/material.dart';

class SplashPage extends StatelessWidget {
  const SplashPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        alignment: Alignment.center,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: AppColors.lightRed,
          ),
        ),
        child: Image.asset(
          'assets/images/CharmanderGif.gif',
          width: 250,
          height: 250,
        ),
      ),
    );
  }
}

import 'package:Charbook/common/variables/app_colors.dart';
import 'package:Charbook/common/variables/app_txtstyles.dart';
import 'package:flutter/material.dart';

class customBtt extends StatelessWidget {
  final VoidCallback? onPressed;
  final String text;

  const customBtt({
    Key? key,
    this.onPressed,
    required this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Color.fromARGB(255, 255, 255, 255),
      child: Ink(
        height: 53.0,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(25)),
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors:
                onPressed != null ? AppColors.darkRed : AppColors.defaultBtt,
          ),
        ),
        child: InkWell(
          borderRadius: const BorderRadius.all(Radius.circular(25)),
          onTap: onPressed,
          child: Align(
            child: Text(
              text,
              style: AppTxtStyles.meddiumTxtWhite,
            ),
          ),
        ),
      ),
    );
  }
}

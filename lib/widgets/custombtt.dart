import 'package:finance_app/common/variables/app_colors.dart';
import 'package:finance_app/common/variables/app_txtstyles.dart';
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
      child: Ink(
        height: 56.0,
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

import 'package:flutter/material.dart';
import 'package:finance_app/common/variables/app_txtstyles.dart';

class CustomTxtBtt extends StatelessWidget {
  final VoidCallback? onPressed;
  final String text;
  final String customTxt;

  const CustomTxtBtt({
    super.key,
    this.onPressed,
    required this.text,
    required this.customTxt,
  });

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () => {},
      child: Row(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            text,
            style: AppTxtStyles.smallTxtDark,
          ),
          Text(
            customTxt,
            style: AppTxtStyles.smallTxtDark
                .copyWith(color: Color.fromARGB(255, 255, 55, 55)),
          ),
        ],
      ),
    );
  }
}

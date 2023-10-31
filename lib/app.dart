import 'package:finance_app/common/themes/theme.dart';
import 'package:finance_app/common/variables/app_colors.dart';
import 'package:finance_app/features/login/sign_up_page.dart';
import 'package:finance_app/features/onboarding/onboarding_page.dart';
import 'package:finance_app/features/splash/splash_page.dart';
import 'package:flutter/material.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(theme: theme, home: signUpPage());
  }
}

import 'package:Charbook/common/themes/theme.dart';
import 'package:Charbook/common/variables/app_colors.dart';
import 'package:Charbook/features/login/sign_up_page.dart';
import 'package:Charbook/features/onboarding/onboarding_page.dart';
import 'package:Charbook/features/splash/splash_page.dart';
import 'package:flutter/material.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(theme: theme, home: signUpPage());
  }
}

import 'package:finance_app/widgets/customTextbtt.dart';
import 'package:finance_app/common/variables/app_txtstyles.dart';
import 'package:flutter/material.dart';
import 'package:finance_app/widgets/custombtt.dart';

class OnboardingPage extends StatelessWidget {
  const OnboardingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 255, 236, 236),
      body: Align(
        child: Column(
          children: [
            const SizedBox(
              height: 50.0,
            ),
            Expanded(
              child: Image.asset(
                'assets/images/Charmander.png',
              ),
            ),
            const SizedBox(
              height: 20.0,
            ),
            const Text(
              "Charbank",
              style: AppTxtStyles.charTxt,
            ),
            const Text(
              "Queime seu crédito",
              style: AppTxtStyles.charTxt,
            ),
            Padding(
              padding: const EdgeInsets.only(top: 13.0),
              child: customBtt(
                text: 'Cadastre-se',
                onPressed: () => {},
              ),
            ),
            CustomTxtBtt(
              onPressed: () => {},
              text: 'Já possui conta? ',
              customTxt: 'Login',
            ),
            const SizedBox(
              height: 25.0,
            )
          ],
        ),
      ),
    );
  }
}

import 'package:Charbook/widgets/customTextbtt.dart';
import 'package:Charbook/common/variables/app_txtstyles.dart';
import 'package:flutter/material.dart';
import 'package:Charbook/widgets/custombtt.dart';

class OnboardingPage extends StatelessWidget {
  const OnboardingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 255, 255, 255),
      body: Align(
        child: Column(
          children: [
            const SizedBox(
              height: 50.0,
            ),
            Expanded(
              child: Image.asset(
                'assets/images/charmander-Livrinho.png',
              ),
            ),
            const SizedBox(
              height: 20.0,
            ),
            const Text(
              "Charbook",
              style: AppTxtStyles.charTxt,
            ),
            const Text(
              "Queime seus livros",
              style: AppTxtStyles.charTxt,
            ),
            Padding(
              padding: const EdgeInsets.only(top: 13.0, left: 40, right: 40),
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

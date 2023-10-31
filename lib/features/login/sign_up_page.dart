import 'package:finance_app/common/variables/app_txtstyles.dart';
import 'package:finance_app/widgets/customFormField.dart';
import 'package:finance_app/widgets/customTextbtt.dart';
import 'package:finance_app/widgets/custombtt.dart';
import 'package:flutter/material.dart';

class signUpPage extends StatelessWidget {
  const signUpPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Text(
            "Charbank",
            style: AppTxtStyles.charTxt,
            textAlign: TextAlign.center,
          ),
          Text(
            "Queime seu crédito",
            textAlign: TextAlign.center,
            style: AppTxtStyles.charTxt,
          ),
          Image.asset(
            'assets/images/flame.gif',
            height: 200,
          ),
          Form(
            child: Column(
              children: const [
                CustomFormField(
                  hintTxt: "Escreva seu nome aqui",
                  labelTxt: "Nome",
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 13.0),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 50),
              child: customBtt(
                text: 'Cadastre-se',
                onPressed: () => {},
              ),
            ),
          ),
          CustomTxtBtt(
            onPressed: () => {},
            text: 'Já possui conta? ',
            customTxt: 'Login',
          ),
        ],
      ),
    );
  }
}

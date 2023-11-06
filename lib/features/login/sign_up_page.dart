import 'dart:math';

import 'package:finance_app/common/variables/app_txtstyles.dart';
import 'package:finance_app/widgets/customFormField.dart';
import 'package:finance_app/widgets/customTextbtt.dart';
import 'package:finance_app/widgets/custombtt.dart';
import 'package:finance_app/widgets/passwordFormField.dart';
import 'package:finance_app/widgets/uppercaseTxt.dart';
import 'package:flutter/material.dart';

class signUpPage extends StatefulWidget {
  const signUpPage({super.key});

  @override
  State<signUpPage> createState() => _signUpPageState();
}

class _signUpPageState extends State<signUpPage> {
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Image.asset(
            'assets/images/Charmander.png',
            height: 130,
          ),
          Form(
            key: _formKey,
            child: Column(
              children: [
                CustomFormField(
                  validator: (value) {
                    print(value);
                    return null;
                  },
                  inputFormatter: [
                    UpperCaseTxtInput(),
                  ],
                  hintTxt: "Escreva seu nome aqui",
                  labelTxt: "NOME",
                ),
                CustomFormField(
                  validator: (value) {
                    print(value);
                    return null;
                  },
                  hintTxt: "pipipi@popopo.com",
                  labelTxt: "EMAIL",
                ),
                PasswordFormField(
                  hintTxt: "*********",
                  labelTxt: "SENHA",
                ),
                PasswordFormField(
                  hintTxt: "*********",
                  labelTxt: "CONFIRME SUA SENHA",
                )
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 13.0),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 50),
              child: customBtt(
                text: 'Cadastre-se',
                onPressed: () {
                  final valid = _formKey.currentState?.validate();
                  print(valid.toString());
                },
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

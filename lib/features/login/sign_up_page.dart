import 'package:Charbook/common/variables/app_txtstyles.dart';
import 'package:Charbook/widgets/customFormField.dart';
import 'package:Charbook/widgets/customTextbtt.dart';
import 'package:Charbook/widgets/custombtt.dart';
import 'package:Charbook/widgets/passwordFormField.dart';
import 'package:Charbook/widgets/uppercaseTxt.dart';
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
            height: 110,
          ),
          Form(
            key: _formKey,
            child: Column(
              children: [
                CustomFormField(
                  validator: (value) {
                    if (value != null && value.isEmpty) {
                      return "Esse campo não pode ser vazio";
                    }
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
                    if (value != null && value.isEmpty) {
                      return "Esse campo não pode ser vazio";
                    }
                    return null;
                  },
                  hintTxt: "pipipi@popopo.com",
                  labelTxt: "EMAIL",
                ),
                PasswordFormField(
                  helperTxt:
                      "A senha deve conter:\n *Letra maiuscula\n *Numero\n *Caractere especial",
                  validator: (value) {
                    if (value != null && value.isEmpty) {
                      return "Esse campo não pode ser vazio";
                    }
                    return null;
                  },
                  hintTxt: "*********",
                  labelTxt: "SENHA",
                ),
                PasswordFormField(
                  validator: (value) {
                    if (value != null && value.isEmpty) {
                      return "Esse campo não pode ser vazio";
                    }
                    return null;
                  },
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
                text: 'Finalizar',
                onPressed: () {
                  final valid = _formKey.currentState != null &&
                      _formKey.currentState!.validate();
                  if (valid) {
                    print("Continuar");
                  } else {
                    print("erro");
                  }
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

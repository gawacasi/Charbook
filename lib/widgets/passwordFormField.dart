import 'package:finance_app/widgets/customFormField.dart';
import 'package:flutter/material.dart';

class PasswordFormField extends StatefulWidget {
  final String? hintTxt;
  final String? labelTxt;
  final TextEditingController? controller;
  final EdgeInsetsGeometry? padding;
  final FormFieldValidator<String>? validator;

  const PasswordFormField({
    super.key,
    this.controller,
    this.padding,
    this.hintTxt,
    this.labelTxt,
    this.validator,
  });

  @override
  State<PasswordFormField> createState() => _PasswordFormFieldState();
}

class _PasswordFormFieldState extends State<PasswordFormField> {
  bool visibilityBttStatus = true;

  @override
  Widget build(BuildContext context) {
    return CustomFormField(
      validator: widget.validator,
      obscureTxt: visibilityBttStatus,
      controller: widget.controller,
      padding: widget.padding,
      hintTxt: widget.hintTxt,
      labelTxt: widget.labelTxt,
      suffixIcon: InkWell(
        borderRadius: BorderRadius.all(Radius.circular(60)),
        child:
            Icon(visibilityBttStatus ? Icons.visibility : Icons.visibility_off),
        onTap: () {
          setState(() {
            visibilityBttStatus = !visibilityBttStatus;
          });
        },
      ),
    );
  }
}

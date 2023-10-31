import 'package:finance_app/common/variables/app_colors.dart';
import 'package:flutter/material.dart';

class CustomFormField extends StatefulWidget {
  final String? hintTxt;
  final String? labelTxt;
  final TextEditingController? controller;
  final TextInputType? keyboardType;
  final int? MaxLines;
  final int? MaxLenght;
  final TextInputAction? txtInputAction;
  const CustomFormField({
    Key? key,
    this.hintTxt,
    this.labelTxt,
    this.controller,
    this.keyboardType,
    this.MaxLines,
    this.MaxLenght,
    this.txtInputAction,
  }) : super(key: key);

  @override
  State<CustomFormField> createState() => _CustomFormFieldState();
}

class _CustomFormFieldState extends State<CustomFormField> {
  final defaultBorder = const OutlineInputBorder();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      child: TextFormField(
        textInputAction: widget.txtInputAction,
        maxLength: widget.MaxLenght,
        maxLines: widget.MaxLines ?? 1,
        keyboardType: widget.keyboardType,
        controller: widget.controller,
        decoration: InputDecoration(
          hintText: widget.hintTxt,
          floatingLabelBehavior: FloatingLabelBehavior.always,
          labelText: widget.labelTxt,
          border: defaultBorder,
          focusedBorder: defaultBorder.copyWith(
            borderSide: const BorderSide(
              color: AppColors.Redbase,
            ),
          ),
          errorBorder: defaultBorder,
          focusedErrorBorder: defaultBorder,
          enabledBorder: defaultBorder.copyWith(
            borderSide: const BorderSide(
              color: AppColors.StrongRed,
            ),
          ),
          disabledBorder: defaultBorder,
        ),
      ),
    );
  }
}

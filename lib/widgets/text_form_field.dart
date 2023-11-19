// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:gokfen_stock_app/constants/app_constants.dart';

//TO-DO

class CustomTextFormField extends StatelessWidget {
  CustomTextFormField(
      {super.key, this.autoFocus, required this.labelText, this.obscureText});
  bool? autoFocus;
  String labelText;
  bool? obscureText;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      autofocus: autoFocus ?? false,
      obscureText: obscureText ?? false,
      decoration: InputDecoration(
        filled: true,
        fillColor: AppConsts.mainColor().withOpacity(0.2),
        focusColor: AppConsts.mainColor(),
        labelText: labelText,
        alignLabelWithHint: true,
        focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(36),
            borderSide: BorderSide(color: AppConsts.mainColor(), width: 2.0)),
        border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(36),
            borderSide: const BorderSide(color: Colors.white, width: 1.0)),
      ),
    );
  }
}

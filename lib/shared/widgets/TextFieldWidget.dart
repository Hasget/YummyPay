import 'package:flutter/material.dart';
import 'package:flutter_app/shared/AppColors.dart';

class TextFieldWidget extends StatelessWidget {
  final String labelText;
  final IconData prefixIconData;
  final IconData suffixIconData;
  final bool obscureText;
  final Function onChanged;

  const TextFieldWidget(
      {this.labelText,
      this.prefixIconData,
      this.suffixIconData,
      this.obscureText,
      this.onChanged});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 48.0,
      child: TextField(
        onChanged: onChanged,
        obscureText: obscureText,
        style: TextStyle(
          fontSize: 14,
        ),
        cursorColor: AppColors.gray,
        decoration: InputDecoration(
          labelText: labelText,
          prefixIcon: Icon(
            prefixIconData,
            size: 18,
            color: AppColors.mainGreen,
          ),
          suffixIcon: Icon(
            suffixIconData,
            size: 18,
            color: AppColors.mainGreen,
          ),
          filled: true,
          enabledBorder: UnderlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: BorderSide.none,
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: BorderSide(color: AppColors.mainGreen),
          ),
          labelStyle: TextStyle(color: AppColors.gray),
          focusColor: AppColors.mainGreen,
        ),
      ),
    );
  }
}

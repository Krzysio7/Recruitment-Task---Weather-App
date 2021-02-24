import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:weather_app/config/app_colors.dart';
import 'package:weather_app/config/text_styles.dart';

class OutlinedTextFormField extends StatelessWidget {
  final TextEditingController textEditingController;
  final String label;
  final Function validator;
  final TextInputType keyboardType;
  final bool obscureText;
  final TextInputAction textInputAction;
  final Function(String) onFieldSubmitted;

  OutlinedTextFormField({
    this.textEditingController,
    this.label,
    this.validator,
    this.obscureText = false,
    this.keyboardType,
    this.textInputAction = TextInputAction.done,
    this.onFieldSubmitted,
  });

  static OutlineInputBorder inputBorder = OutlineInputBorder(
    borderSide: BorderSide(color: AppColors.lightBlue.withOpacity(0.47)),
    borderRadius: BorderRadius.all(Radius.circular(4)),
  );

  static OutlineInputBorder inputBorderError = OutlineInputBorder(
    borderSide: BorderSide(color: AppColors.lipstick),
    borderRadius: BorderRadius.all(Radius.circular(4)),
  );

  @override
  Widget build(BuildContext context) {
    return Container(
      child: TextFormField(
        textInputAction: textInputAction,
        onFieldSubmitted: onFieldSubmitted,
        obscureText: obscureText,
        decoration: InputDecoration(
          labelText: label,
          labelStyle: TextStyles.labelText,
          contentPadding: EdgeInsets.symmetric(horizontal: 10),
          filled: true,
          fillColor: AppColors.white,
          disabledBorder: inputBorder,
          focusedBorder: inputBorder,
          enabledBorder: inputBorder,
          errorBorder: inputBorderError,
          focusedErrorBorder: inputBorderError,
        ),
        keyboardType: keyboardType,
        controller: textEditingController,
        validator: validator,
      ),
      decoration: BoxDecoration(
        boxShadow: <BoxShadow>[
          BoxShadow(
            color: AppColors.textInputShadow,
            blurRadius: 16,
            offset: Offset(0, 2),
          ),
        ],
        borderRadius: BorderRadius.all(Radius.circular(6)),
      ),
    );
  }
}

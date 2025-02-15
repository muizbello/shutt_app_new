import 'package:flutter/material.dart';
import 'package:shutt_app/styles/colors.dart';

class CustomTextField2 extends StatelessWidget {
  final TextEditingController textController;
  final Function onPressed;
  final TextInputType keyboardType;
  final IconData? textIcon;
  final String hintText;
  final bool hideText;
  final bool readOnly;
  const CustomTextField2(
      {super.key,
      required this.textController,
      required this.hintText,
      required this.onPressed,
      this.readOnly = false,
      this.keyboardType = TextInputType.text,
      this.hideText = false,
      this.textIcon});

  @override
  Widget build(BuildContext context) {
    return TextField(
      obscureText: hideText,
      controller: textController,
      keyboardType: keyboardType,
      readOnly: readOnly,
      onTap: () {
        onPressed();
      },
      decoration: InputDecoration(
          prefixIcon: Icon(textIcon),
          prefixIconColor: appColors.green,
          focusColor: appColors.lightGreen,
          // icon: Icon(textIcon),
          // iconColor: appColors.green,
          border: InputBorder.none,
          fillColor: appColors.offWhite,
          filled: true,
          hintText: hintText,
          hintStyle: const TextStyle(color: appColors.textGrey)),
    );
  }
}

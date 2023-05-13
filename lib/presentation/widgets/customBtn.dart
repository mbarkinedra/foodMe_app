import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:food_me/config/appColor.dart';

class CustomBtn extends StatelessWidget {
  final Color? backColor;
  final double? raduis;
  final Function function;
  final Widget? text;

  const CustomBtn(
      {Key? key,
       this.backColor,

       this.raduis,

      required this.function,
       this.text})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextButton(
        onPressed: () {
          function;
        },
        style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all(backColor),
            shape: MaterialStateProperty.all(RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(raduis!),
            ))),
        // set the border radius here

        child: text!);
  }
}

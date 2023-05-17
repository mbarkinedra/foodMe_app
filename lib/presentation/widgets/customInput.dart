import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CustomInput extends StatelessWidget {
  final String hint;
  String Function(String) validator;
  final TextEditingController textEditingController;
   CustomInput({Key key, @required this.hint, this.validator,  this.textEditingController}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return TextFormField(controller: textEditingController,
      validator: validator,
      decoration: InputDecoration(
        hintText: hint
      ),

    );
  }
}

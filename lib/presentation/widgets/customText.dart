import 'package:flutter/cupertino.dart';

class CustomText extends StatelessWidget {
  final String title;
  final double fontSize;
  final Color color;
  final String fontFamily;
  final FontWeight fontWeight;
  const CustomText({Key key, @required this.title, @required this.fontSize, @required this.color,
     this.fontFamily, this.fontWeight}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: TextStyle(
        color: color,
        fontSize: fontSize,
        fontFamily: fontFamily,
          fontWeight: fontWeight,
      ),
    );
  }
}

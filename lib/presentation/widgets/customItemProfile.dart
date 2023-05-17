import 'package:flutter/cupertino.dart';
import 'package:food_me/presentation/widgets/customText.dart';

import '../../config/appColor.dart';

class CustomItemProfile extends StatelessWidget {

  final String text;
  final Color color;
  final Color colorBack;
 // final Color colorImage;
  final double fontSize;
  final String fontFamily;
  final FontWeight fontWeight;
  final String image;

  const CustomItemProfile(
      {Key key,

      @required this.text,
     @ required this.color,
      @required this.fontSize,
      this.fontFamily,
      this.fontWeight,
      @required this.image,
       @ required this.colorBack
      })
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: colorBack,
      padding: EdgeInsets.only(left: 10, top: 9, bottom: 9),
      child: Row(
        children: [
          Image.asset(image),
          SizedBox(
            width: 20,
          ),
          CustomText(
            title: text,
            fontSize: fontSize,
            color: color,
            fontWeight: fontWeight,
            fontFamily: "Tajawal",
          )
        ],
      ),
    );
  }
}

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../config/appColor.dart';

class CustomNavBar extends StatelessWidget {
  const CustomNavBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return
      Container(
      width: 428,
      height: 65,
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow:
        [BoxShadow(
          color: AppColor.blackRussian.withOpacity(0.1),
          blurRadius: 6,
          offset: Offset(0, 4)
        )]
      ),

      padding: EdgeInsets.only(
        left: 154,
        top: 18,
        right: 154,
        bottom: 18,

      ),
    child:
    Center(child: Image.asset("asset/images/logo.png",)),
    );
  }
}

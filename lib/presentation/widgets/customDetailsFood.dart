import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../config/appColor.dart';

class CustomDetailsFood extends StatelessWidget {
  const CustomDetailsFood({Key? key}) : super(key: key);

  Widget build(BuildContext context) {
    return Card(

        color: AppColor.greyCard,
        child: Padding(
          padding: EdgeInsets.all(5),
          child: Row(children: [
            Image.asset(
              "asset/images/mixPasta.png",
              width: 120,
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Text(
                      'All mix pasta',
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 14,
                          fontWeight: FontWeight.w500,
                          fontFamily: 'Tajawal'),
                    ),
                    SizedBox(
                      width: 100,
                    ),
                    Text(
                      '39.0 SAR',
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 14,
                          fontWeight: FontWeight.w500,
                          fontFamily: 'Tajawal'),
                    ),
                  ],
                ),
                Text(
                  'Supreme pasta (shrimp, hotdog, p ',
                  style: TextStyle(
                      color: Colors.grey,
                      fontSize: 11,
                      fontWeight: FontWeight.w400,
                      fontFamily: 'Tajawal'),
                ),
              ],
            )
          ]),
        ));
  }
}

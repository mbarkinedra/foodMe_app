import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../config/appColor.dart';

class CustomDetailsFood extends StatelessWidget {
  const CustomDetailsFood({Key key}) : super(key: key);

  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        color: AppColor.greyCard,
        child: Row(
          children: [
            Image.asset(
              "asset/images/mixPasta.png",
              width: 120,
            ),
            Flexible(
              child: Column(
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
                          fontFamily: 'Tajawal',
                        ),
                      ),
                      SizedBox(
                        width: 70,
                      ),
                      Text(
                        '39.0 SAR',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 14,
                          fontWeight: FontWeight.w500,
                          fontFamily: 'Tajawal',
                        ),
                      ),
                    ],
                  ),
                  Text(
                    'Supreme pasta (shrimp, hotdog, pepperoni and chicken)\n with delicious casa pasta sauce.',
                    style: TextStyle(
                      color: Colors.grey,
                      fontSize: 11,
                      fontWeight: FontWeight.w400,
                      fontFamily: 'Tajawal',
                    ),
                    maxLines: 4,
                    overflow: TextOverflow.ellipsis,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

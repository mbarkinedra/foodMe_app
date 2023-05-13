import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../config/appColor.dart';
import '../pages/homeTap/homeDetail.dart';
import 'customButton.dart';
import 'customImage.dart';
import 'customText.dart';

class CustomNavBarDelivery extends StatelessWidget {
  const CustomNavBarDelivery({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return
      Card(
        color: AppColor.greyCard,
        child: Padding(
            padding: EdgeInsets.all(5),
            child: Column(
              children: [

                Row(
                  children: [
                    Image.asset(
                      'asset/images/delivery.png',
                      color: Colors.black,
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    CustomText(
                      title: 'Jahez',
                      fontSize: 20,
                      color: Colors.black,
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    CustomText(
                      title: 'Best deal',
                      fontSize: 12,
                      color: AppColor.secondaryGreen,
                    ),
                    CustomText(
                      title: '0.00',
                      fontSize: 16,
                      color: Colors.black,
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    CustomText(
                      title: 'Sar',
                      fontSize: 12,
                      color: Colors.black,
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    CustomText(
                      title: '35 min.',
                      fontSize: 16,
                      color: Colors.black,
                    ),
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                Row(
                  children: [
                    CustomText(
                      title: 'View all deals (4)',
                      fontSize: 12,
                      color: AppColor.secondaryBlue,
                    ),
                    Spacer(),
                    CustomButton(
                      function: () {
                        print("object");
                        Navigator.of(context).push(
                            MaterialPageRoute(builder: (context) => HomeDetailPage()));
                      },
                      text: "Go to app",
                      image: "asset/images/go.png",
                      borderRduis: Radius.circular(6),
                      borderRaduis2: Radius.circular(6),
                      backgroundColor: AppColor.primaryYellow,
                      //  widthContainer: MediaQuery.of(context).size.width * .28,
                      imageColor: Colors.white,
                      fontSize: 16,
                      textColor: Colors.white,
                      padding: 10,
                    ),
                  ],
                ),
              ],
            )));
  }
}

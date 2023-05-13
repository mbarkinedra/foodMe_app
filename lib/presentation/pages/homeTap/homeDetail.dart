import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:food_me/presentation/widgets/customBtn.dart';
import 'package:food_me/presentation/widgets/customDetailsFood.dart';
import 'package:food_me/presentation/widgets/customGoToApp.dart';
import 'package:food_me/presentation/widgets/customNavBarDelivery.dart';

import '../../../config/appColor.dart';
import '../../widgets/customText.dart';

class HomeDetailPage extends StatelessWidget {
  const HomeDetailPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text(
            'La casa pasta',
            style: TextStyle(
                color: AppColor.primaryBlue,
                fontSize: 20,
                fontFamily: 'Tajawal',
                fontWeight: FontWeight.w500),
          ),
        ),
        backgroundColor: Colors.white,
        iconTheme: IconThemeData(color: AppColor.primaryBlue),
      ),
      body: SingleChildScrollView(
          child: Padding(
        padding: EdgeInsets.all(10),
        child: Column(children: [
          CustomGotToApp(),
          SizedBox(
            height: 20,
          ),
          Row(
            children: [
              Text(
                "Menus",
                style: TextStyle(
                    color: AppColor.primaryYellow,
                    fontSize: 20,
                    fontFamily: 'Tajawal',
                    fontWeight: FontWeight.w700),
              ),
              Spacer(),
              Image.asset(
                "asset/images/search_.png",
                color: AppColor.primaryYellow,
              )
            ],
          ),
          SizedBox(
            height: 20,
          ),
          Row(
            children: [
              TextButton(
                onPressed: () {},
                style: ButtonStyle(
                    backgroundColor:
                        MaterialStateProperty.all(AppColor.primaryYellow),
                    shape: MaterialStateProperty.all(RoundedRectangleBorder(
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(10),
                          bottomLeft: Radius.circular(10)),
                    ))),
                // set the border radius here
                child: CustomText(
                  color: AppColor.primaryBlue,
                  fontSize: 14,
                  title: 'Dashdoor',
                  fontFamily: 'Tajawal',
                  fontWeight: FontWeight.w500,
                ),
              ),
              TextButton(
                onPressed: () {},
                style: ButtonStyle(
                    backgroundColor:
                    MaterialStateProperty.all(AppColor.greyBackGroundProfile),

                ),
                // set the border radius here
                child: CustomText(
                  color: AppColor.blue,
                  fontSize: 14,
                  title: 'UberEats',
                  fontFamily: 'Tajawal',
                  fontWeight: FontWeight.w500,
                ),
              ),
              TextButton(
                onPressed: () {},
                style: ButtonStyle(
                    backgroundColor:
                    MaterialStateProperty.all(AppColor.greyBackGroundProfile),
                    shape: MaterialStateProperty.all(RoundedRectangleBorder(
                      borderRadius: BorderRadius.only(
                          topRight: Radius.circular(10),
                          bottomRight: Radius.circular(10)),
                    ))),
                // set the border radius here
                child: CustomText(
                  color: AppColor.blue,
                  fontSize: 14,
                  title: 'Deliveroo',
                  fontFamily: 'Tajawal',
                  fontWeight: FontWeight.w500,
                ),
              ),
            ],

          ),
          SizedBox(
            height: 20,
          ),
           Padding(
            padding: const EdgeInsets.all(8),
            child: ListView.builder(
              itemCount: 10,
              shrinkWrap: true,
              itemBuilder: (BuildContext context, int index) => CustomDetailsFood(),
            ),
          ),
        ]),
      )),
      //bottomNavigationBar:CustomNavBarDelivery() ,
    );
  }
}

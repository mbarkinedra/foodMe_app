import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../config/appColor.dart';
import 'customBtn.dart';
import 'customImage.dart';
import 'customText.dart';

class CustomGotToApp extends StatelessWidget {
  const CustomGotToApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
        color: AppColor.greyCard,
        child: Padding(
            padding: EdgeInsets.all(5),
            child: Column(children: [
              Row(
                children: [
                  Image.asset("asset/images/pasta.png"),
                  Column(
                    children: [
                      CustomText(
                        title: 'La Casa Pasta',
                        fontSize: 16,
                        color: Colors.black,
                      ),
                      Row(
                        children: [
                          CustomImage(
                            image: "asset/images/star.png",
                            imageColor: AppColor.primaryYellow,
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          CustomText(
                            title: '2 km',
                            fontSize: 16,
                            color: AppColor.primaryBlue,
                          ),
                        ],
                      ),
                    ],
                  ),
                  SizedBox(
                    width: 110,
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                        bottom: MediaQuery.of(context).size.height * .01),
                    child: Image.asset('asset/images/coeur.png'),
                  ),
                ],
              ),
              SizedBox(
                height: 5,
              ),
              Row(
                children: [
                  SizedBox(
                    width: MediaQuery.of(context).size.width * .1,
                    height: MediaQuery.of(context).size.height * .03,
                    child: CustomBtn(
                      backColor: AppColor.btnColor,
                      raduis: 3,
                      function: () {},
                      text: CustomText(
                        color: AppColor.primaryBlue,
                        fontSize: 10,
                        title: 'Lunch',
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  SizedBox(
                    width: MediaQuery.of(context).size.width * .1,
                    height: MediaQuery.of(context).size.height * .03,
                    child: CustomBtn(
                      backColor: AppColor.btnColor,
                      raduis: 3,
                      function: () {},
                      text: CustomText(
                        color: AppColor.primaryBlue,
                        fontSize: 10,
                        title: 'Dinner',
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  SizedBox(
                      width: MediaQuery.of(context).size.width * .1,
                      height: MediaQuery.of(context).size.height * .03,
                      child: CustomBtn(
                        backColor: AppColor.btnColor,
                        raduis: 3,
                        function: () {},
                        text: CustomText(
                          color: AppColor.primaryBlue,
                          fontSize: 10,
                          title: 'Italian',
                        ),
                      ))
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                children: [
                  const Icon(
                    Icons.access_time_rounded,
                    color: Colors.black,
                    size: 14,
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Text(
                    'Open',
                    style:
                        TextStyle(color: AppColor.secondaryGreen, fontSize: 10),
                  ),
                  Text(
                    " ⋅ Closes 11 PM ",
                    style: TextStyle(color: AppColor.primaryBlue, fontSize: 10),
                  ),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                children: [
                  // Image.asset("asset/images/location.png"),
                  // color: AppColor.primaryBlue,
                  const Icon(
                    Icons.location_on,
                    color: Colors.black,
                    size: 14,
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Text(
                    "6554 Al Wadi, Al Olaya, Riyadh 12211- 3511, Saudi ...",
                    style: TextStyle(
                      color: AppColor.primaryBlue,
                      fontSize: 10,
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                children: [
                  // Image.asset("asset/images/location.png"),
                  // color: AppColor.primaryBlue,
                  const Icon(
                    Icons.phone,
                    color: Colors.black,
                    size: 14,
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Text(
                    "+966 9200 12111",
                    style: TextStyle(
                      color: AppColor.primaryBlue,
                      fontSize: 10,
                    ),
                  ),
                ],
              ),


            ])));
  }
}

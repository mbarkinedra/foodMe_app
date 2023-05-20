import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

import '../../config/appColor.dart';
import 'customBtn.dart';
import 'customImage.dart';
import 'customText.dart';

class CustomGotToApp extends StatelessWidget {
  const CustomGotToApp({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
        color: AppColor.greyCard,
        child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Image.asset("asset/images/pasta.png"),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      CustomText(
                        title: 'La Casa Pasta',
                        fontSize: 16,
                        color: Colors.black,
                      ),
                      Row(
                        children: [
                          RatingBar.builder(
                            initialRating: 3,
                            minRating: 1,
                            direction: Axis.horizontal,
                            allowHalfRating: true,
                            itemSize: 12,
                            itemCount: 5,
                            itemPadding: EdgeInsets.symmetric(horizontal: 4.0),
                            itemBuilder: (context, _) => Icon(
                              Icons.star,
                              color: Colors.amber,
                            ),
                            onRatingUpdate: (rating) {
                              print(rating);
                            },
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          CustomText(
                            title: '2 km',
                            fontSize: 16,
                            fontWeight: FontWeight.w400,
                            color: AppColor.primaryBlue,
                          ),
                        ],
                      ),
                    ],
                  ),
                  Spacer(),
                  Icon(
                    Icons.favorite_border,
                    color: AppColor.primaryBlue,
                  ),
                ],
              ),
              SizedBox(
                height: 5,
              ),
              Row(
                children: [
                  SizedBox(
                    width: MediaQuery.of(context).size.width * .15,
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
                    width: MediaQuery.of(context).size.width * .15,
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
                      width: MediaQuery.of(context).size.width * .15,
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
                    Icons.access_time_filled_outlined,
                    color: Color.fromRGBO(15, 37, 70, 1),
                    size: 14,
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Text(
                    'Open',
                    style: TextStyle(
                      color: AppColor.secondaryGreen,
                      fontSize: 10,
                      fontWeight: FontWeight.w300,
                      fontFamily: "Tajawal",
                    ),
                  ),
                  Text(
                    " ⋅ Closes ",
                    style: TextStyle(
                        color: AppColor.primaryBlue,
                        fontWeight: FontWeight.w300,
                        fontFamily: "Tajawal",
                        fontSize: 10),
                  ),
                  Text(
                    " 11 PM ",
                    style: TextStyle(
                      color: AppColor.primaryBlue,
                      fontSize: 10,
                      fontWeight: FontWeight.w300,
                      fontFamily: "Tajawal",
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
                    Icons.location_on,
                    color: Color.fromRGBO(15, 37, 70, 1),
                    size: 14,
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Text(
                    "6554 Al Wadi, Al Olaya, Riyadh 12211- 3511, Saudi ...",
                    style: TextStyle(
                      color: AppColor.primaryBlue,
                      fontWeight: FontWeight.w300,
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
                    color: Color.fromRGBO(15, 37, 70, 1),
                    size: 14,
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Text(
                    "+966 9200 12111",
                    style: TextStyle(
                      color: AppColor.primaryBlue,
                      fontWeight: FontWeight.w300,
                      fontFamily: "Tajawal",
                      fontSize: 10,
                    ),
                  ),
                ],
              ),
              SizedBox(height: 20,)
            ]));
  }
}

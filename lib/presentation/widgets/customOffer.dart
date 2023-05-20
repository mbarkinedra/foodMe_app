import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

import '../../config/appColor.dart';
import 'customBtn.dart';
import 'customText.dart';

class CustomOffer extends StatelessWidget {
  const CustomOffer({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 15, left: 15),
      child: Container(
        // color: AppColor.greyCard,
        decoration: BoxDecoration(
            color: AppColor.greyCard, borderRadius: BorderRadius.circular(8.0)),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              child: Image.asset(
                "asset/images/burger.png",
                fit: BoxFit.fill,
              ),
            ),
            Padding(
              padding:
                  const EdgeInsets.only(top: 10, right: 5, bottom: 0, left: 5),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(
                    height: 10,
                  ),
                  Row(
                    children: [
                      Text(
                        "Burger King",
                        maxLines: 3,
                        overflow: TextOverflow.ellipsis,
                        style: const TextStyle(
                            fontWeight: FontWeight.w700,
                            fontSize: 18,
                            fontFamily: 'Tajawal'),
                      ),
                      Spacer(),
                      RatingBar.builder(
                        initialRating: 3,
                        minRating: 1,
                        direction: Axis.horizontal,
                        allowHalfRating: true,
                        itemSize: 15,
                        itemCount: 5,
                        itemPadding: EdgeInsets.symmetric(horizontal: 3.0),
                        itemBuilder: (context, _) => Icon(
                          Icons.star,
                          color: Colors.amber,
                        ),
                        onRatingUpdate: (rating) {
                          print(rating);
                        },
                      )
                    ],
                  ),
                  const SizedBox(
                    height: 10,
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
                            fontWeight: FontWeight.w500,
                            fontFamily: "Tajawal",
                            title: 'Lunch',
                          ),
                        ),
                      ),
                      const SizedBox(
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
                            fontWeight: FontWeight.w500,
                            fontFamily: "Tajawal",
                            fontSize: 10,
                            title: 'Dinner',
                          ),
                        ),
                      ),
                      const SizedBox(
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
                            fontWeight: FontWeight.w500,
                            fontFamily: "Tajawal",
                            title: 'Italian',
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
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
                            fontWeight: FontWeight.w500,
                            fontSize: 10),
                      ),
                      Text(
                        " ⋅ Closes  ",
                        style: TextStyle(
                            color: AppColor.primaryBlue,
                            fontWeight: FontWeight.w500,
                            fontSize: 10),
                      ),
                      Expanded(
                        child: Padding(
                          padding: const EdgeInsets.only(left: 4),
                          child: Text(
                            "12 PM",
                            softWrap: true,
                            style: TextStyle(
                                color: AppColor.primaryBlue,
                                fontFamily: "Tajawaal",
                                fontSize: 10,
                                fontWeight: FontWeight.w500),
                            overflow: TextOverflow.ellipsis,
                            maxLines: 4,
                          ),
                        ),
                      ),
                      const Icon(
                        Icons.location_on,
                        color: Color.fromRGBO(15, 37, 70, 1),
                        size: 16,
                      ),
                      Expanded(
                        child: Padding(
                          padding: const EdgeInsets.only(left: 4),
                          child: Text(
                            "soussse" " , " "tunis",
                            softWrap: true,
                            style: TextStyle(
                                color: AppColor.primaryBlue,
                                fontFamily: "Tajawaal",
                                fontSize: 10,
                                fontWeight: FontWeight.w500),                            overflow: TextOverflow.ellipsis,
                            maxLines: 4,
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 20,
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

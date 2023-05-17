import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

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
      padding: const EdgeInsets.only(right: 8,left: 8),
      child: Card(
        color: AppColor.greyCard,
        clipBehavior: Clip.antiAlias,
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
                      Row(
                        children: [
                          Image.asset("asset/images/star.png"),
                          Image.asset("asset/images/star.png"),
                          Image.asset("asset/images/star.png"),
                          Image.asset("asset/images/star.png")
                        ],
                      )
                    ],
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Row(
                    children: [
                      CustomBtn(
                        backColor: AppColor.btnColor,
                        raduis: 3,
                        function: () {},
                        text: CustomText(
                          color: AppColor.primaryBlue,
                          fontSize: 10,
                          title: 'Lunch',
                        ),
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      CustomBtn(
                        backColor: AppColor.btnColor,
                        raduis: 3,
                        function: () {},
                        text: CustomText(
                          color: AppColor.primaryBlue,
                          fontSize: 10,
                          title: 'Dinner',
                        ),
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      CustomBtn(
                        backColor: AppColor.btnColor,
                        raduis: 3,
                        function: () {},
                        text: CustomText(
                          color: AppColor.primaryBlue,
                          fontSize: 10,
                          title: 'Italian',
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 10,
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
                        style: TextStyle(
                            color: AppColor.secondaryGreen, fontSize: 10),
                      ),
                      Text(
                        " ⋅ Closes 11 PM ",
                        style:
                            TextStyle(color: AppColor.primaryBlue, fontSize: 10),
                      ),
                      Expanded(
                        child: Padding(
                          padding: const EdgeInsets.only(left: 4),
                          child: Text(
                            "12",
                            softWrap: true,
                            style:
                                TextStyle(color: Colors.black.withOpacity(0.6)),
                            overflow: TextOverflow.ellipsis,
                            maxLines: 4,
                          ),
                        ),
                      ),
                      const Icon(
                        Icons.location_on,
                        color: Colors.grey,
                        size: 16,
                      ),
                      Expanded(
                        child: Padding(
                          padding: const EdgeInsets.only(left: 4),
                          child: Text(
                            "soussse" + "tunis",
                            softWrap: true,
                            style:
                                TextStyle(color: Colors.black.withOpacity(0.6)),
                            overflow: TextOverflow.ellipsis,
                            maxLines: 4,
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 10,
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

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

import '../../config/appColor.dart';

class CustomDiscoverDetails extends StatelessWidget {
  const CustomDiscoverDetails({Key key}) : super(key: key);

  Widget build(BuildContext context) {
    return Card(
        color: AppColor.greyCard,
        child: Row(children: [
          Image.asset(
            "asset/images/mixPasta.png",
            width: 120,
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Meat Pizza With Chicken..hhhhhhhhhhhhhhhhhhhhhhhhhh',
               maxLines: 2,
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 17,
                    fontWeight: FontWeight.w700,
                    fontFamily: 'Tajawal'),
              ),
              Text(
                'Khaleej Rd، 2nd Floor, Marina Mal',
                maxLines: 3,
                style: TextStyle(
                    color: AppColor.primaryBlue,
                    fontSize: 10,
                    fontWeight: FontWeight.w700,
                    fontFamily: 'Tajawal'),
              ),
              SizedBox(
                height: 10,
              ),
              RatingBar.builder(
                initialRating: 3,
                minRating: 1,
                direction: Axis.horizontal,
                allowHalfRating: true,
                itemCount: 5,
                itemSize: 12,
                itemPadding: EdgeInsets.symmetric(horizontal: 4.0),
                itemBuilder: (context, _) => Icon(
                  Icons.star,
                  color: Colors.amber,
                ),
                onRatingUpdate: (rating) {
                  print(rating);
                },
              )
            ],
          )
        ]));
  }
}

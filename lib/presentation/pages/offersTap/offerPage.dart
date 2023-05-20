import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:food_me/config/appColor.dart';
import 'package:food_me/presentation/widgets/customCard.dart';
import 'package:food_me/presentation/widgets/customOffer.dart';

import '../../widgets/customNavBar.dart';

class OfferPage extends StatefulWidget {
  const OfferPage({Key key}) : super(key: key);

  @override
  State<OfferPage> createState() => _OfferPageState();
}

class _OfferPageState extends State<OfferPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title:CustomNavBar() ,),
      body:
      Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [

            SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.only(right: 10, left: 10),
              child: Text(
                'Offers for you',
                style: TextStyle(
                    color: AppColor.offreBlue,
                    fontFamily: 'Tajawal',
                    fontSize: 20,
                    fontWeight: FontWeight.w700),
              ),
            ),

            Expanded(
              child: ListView.builder(
                itemCount: 10,
                itemBuilder: (context, int index) {
                  return CustomOffer();
                },
              ),
            ),              // CustomOffer()
          ]),
    );
  }
}

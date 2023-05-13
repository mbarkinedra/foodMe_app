import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:food_me/config/appColor.dart';
import 'package:food_me/presentation/widgets/customCard.dart';
import 'package:food_me/presentation/widgets/customOffer.dart';

import '../../widgets/customNavBar.dart';

class OfferPage extends StatefulWidget {
  const OfferPage({Key? key}) : super(key: key);

  @override
  State<OfferPage> createState() => _OfferPageState();
}

class _OfferPageState extends State<OfferPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,children: [

          SizedBox(
            height: MediaQuery.of(context).size.height * .06,
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height * .1,
            child: CustomNavBar(),
          ),
          SizedBox(
            height:20,
          ),
          Padding(
            padding: const EdgeInsets.only(right: 8,left: 8),
            child: Text(
              'Offers for you',
              style: TextStyle(
                  color: AppColor.secondaryBlue,
                  fontFamily: 'Tajawal',
                  fontSize: 20,
                  fontWeight: FontWeight.w700),
            ),
          ),

          ListView.separated(
            shrinkWrap: true,
            itemCount: 6,
            itemBuilder: (context, pos) {
              return CustomOffer();
            },
            separatorBuilder: (BuildContext context, int index) {
              return SizedBox(
                //  color:Colors.grey,
                height: 20,
              );
            },
          )
          // CustomOffer()
        ]),
      ),
    );
  }
}

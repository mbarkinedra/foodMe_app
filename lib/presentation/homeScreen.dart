import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:food_me/presentation/widgets/CustomItemHome.dart';
import 'package:food_me/presentation/widgets/customButton1.dart';
import 'package:food_me/presentation/widgets/customButton2.dart';

import '../config/appColor.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Size size;

    return Scaffold(
        body: SingleChildScrollView(
            child: Column(children: [
      Padding(
        padding:
            const EdgeInsets.only(right: 20, bottom: 20, left: 20, top: 70),
        child: Container(
          decoration: BoxDecoration(
            border: Border.all(width: 2, color: Colors.grey),
          ),
          child: Row(children: [
            Icon(Icons.location_on),
            SizedBox(
              width: 8,
            ),
            Text("sousse,Tunise")
          ]),
        ),
      ),
      Padding(
        padding: const EdgeInsets.all(8.0),
        child: Align(
          alignment: Alignment.centerLeft,
          child: CustomButton1(
            icon: ImageIcon(AssetImage("assets/images/delivery.png")),
            text: 'Delivery',
            color: AppColor.primaryBlue,
            width: 119,
            hight: 40,
            onClick: () {
              //   controller.googleSignInMethod();
            },
          ),
        ),
      ),
      SizedBox(
        height: 8,
      ),
      Row(
        children: [
          CustomButton2(
            icon: ImageIcon(AssetImage("assets/images/fleche.png")),
            text: 'Sort by',
            color: AppColor.greyCard,
            width: 119,
            hight: 40,
            onClick: () {
              //   controller.googleSignInMethod();
            },
          ),
          SizedBox(
            width: 39,
          ),
          CustomButton2(
            icon: ImageIcon(AssetImage("assets/images/filter.png")),
            text: 'Filtre',
            color: AppColor.greyCard,
            width: 119,
            hight: 36,
            onClick: () {
              //   controller.googleSignInMethod();
            },
          ),

        ],
      ),
      MyHomeItem()
    ])));
  }
}

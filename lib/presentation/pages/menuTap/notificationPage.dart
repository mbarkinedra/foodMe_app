import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../config/appColor.dart';

class NotificatinPage extends StatefulWidget {
  const NotificatinPage({Key key}) : super(key: key);

  @override
  State<NotificatinPage> createState() => _NotificatinPageState();
}

class _NotificatinPageState extends State<NotificatinPage> {
  bool switch1Value = false;
  bool switch2Value = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
            child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
          Container(
              height: 80,
              decoration: BoxDecoration(
                  color: AppColor.primaryBlue,
                  borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(20),
                      bottomRight: Radius.circular(20))),
              child: Row(
                children: [
                  SizedBox(
                    width: 8,
                  ),
                  GestureDetector(
                      onTap: () {
                        Navigator.of(context).pop();
                      },
                      child: Icon(
                        Icons.arrow_back,
                        color: Colors.white,
                      )),
                  Spacer(),
                  Text("language".tr,
                      style: TextStyle(color: Colors.white, fontSize: 23)),
                  Spacer(),
                ],
              )),
          SizedBox(
            height: 20,
          ),
          Text(
            "Customize your notificatons",
            style: TextStyle(
                color: AppColor.primaryYellow,
                fontSize: 20,
                fontWeight: FontWeight.w700,
                fontFamily: 'Tajawal'),
          ),
          ListTile(
            title: Text(
              'Special offers',
              style: TextStyle(
                  color: AppColor.primaryBlue,
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                  fontFamily: 'Tajawal'),
            ),
            trailing: Switch(
              value: switch1Value,
              activeColor: AppColor.primaryBlue,
              onChanged: (value) {
                setState(() {
                  switch1Value = value;
                });
              },
            ),
          ),
          ListTile(
            title: Text(
              'Discounts',
              style: TextStyle(
                  color: AppColor.primaryBlue,
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                  fontFamily: 'Tajawal'),
            ),
            trailing: Switch(
              value: switch2Value,
              activeColor: AppColor.primaryBlue,
              onChanged: (value) {
                setState(() {
                  switch2Value = value;
                });
              },
            ),
          )
        ])));
  }
}

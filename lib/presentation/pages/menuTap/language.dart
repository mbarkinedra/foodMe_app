import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../config/appColor.dart';
import 'languageController.dart';

enum SingingCharacter { English, Arabic }

class LanguagePage extends GetView<LanguageController> {
  Widget build(BuildContext context) {
    return GetBuilder<LanguageController>(builder: (logic) {
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
                'Choose your preferred language',
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 20,
                    fontWeight: FontWeight.w700,
                    fontFamily: 'Tajawal'),
              ),
              ListTile(
                dense: true,
                onTap: () {
                  logic.updateToEnglish();
                },
                leading: Text(
                  'English'.tr,
                  style: TextStyle(
                      color: AppColor.primaryBlue,
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                      fontFamily: 'Tajawal'),
                ),
                trailing: Radio(
                  value: SingingCharacter.English,
                  groupValue: logic.lan,
                  activeColor: AppColor.primaryBlue,
                  onChanged: (SingingCharacter value) {
                    logic.updateToEnglish();
                    //  logic. lan = value!;
                  },
                ),
              ),
              ListTile(
                dense: true,
                onTap: () {
                  logic.updateToArabic();
                },
                leading: Text(
                  'Arabic'.tr,
                  style: TextStyle(
                      color: AppColor.primaryBlue,
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                      fontFamily: 'Tajawal'),
                ),
                trailing: Radio(
                  value: SingingCharacter.Arabic,
                  groupValue: logic.lan,
                  activeColor:AppColor.primaryBlue,
                  onChanged: (SingingCharacter value) {
                    logic.updateToArabic();
                  },
                ),
              ),
            ],
          ),
        ),
      );
    });
  }
}

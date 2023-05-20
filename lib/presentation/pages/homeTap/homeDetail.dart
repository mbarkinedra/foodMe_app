import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:food_me/presentation/widgets/customBtn.dart';
import 'package:food_me/presentation/widgets/customDetailsFood.dart';
import 'package:food_me/presentation/widgets/customGoToApp.dart';
import 'package:food_me/presentation/widgets/customNavBarDelivery.dart';

import '../../../config/appColor.dart';
import '../../widgets/customText.dart';

class HomeDetailPage extends StatefulWidget {
  const HomeDetailPage({Key key}) : super(key: key);

  @override
  _HomeDetailPageState createState() => _HomeDetailPageState();
}

class _HomeDetailPageState extends State<HomeDetailPage> {
  bool isSearchOpened = false;

  void toggleSearch() {
    setState(() {
      isSearchOpened = !isSearchOpened;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text(
            'La casa pasta',
            style: TextStyle(
              color: AppColor.primaryBlue,
              fontSize: 20,
              fontFamily: 'Tajawal',
              fontWeight: FontWeight.w500,
            ),
          ),
        ),
        backgroundColor: Colors.white,
        iconTheme: IconThemeData(color: AppColor.primaryBlue),
      ),
      body: Padding(
        padding: EdgeInsets.only(left: 16, right: 16),
        child: Column(
          children: [
            CustomGotToApp(),
            SizedBox(
              height: 20,
            ),
            Row(
              children: [
                Text(
                  "Menus",
                  style: TextStyle(
                    color: AppColor.primaryYellow,
                    fontSize: 20,
                    fontFamily: 'Tajawal',
                    fontWeight: FontWeight.w700,
                  ),
                ),
                Spacer(),
                IconButton(
                  icon: Icon(Icons.search, color: AppColor.primaryYellow),
                  onPressed: toggleSearch,
                ),
              ],
            ),
            if (isSearchOpened)
              Container(
                width: double.infinity,
                height: 50,
                child: TextFormField(
                  decoration: InputDecoration(
                    hintText: "Search...",
                    fillColor: AppColor.greyCard,
                    filled: true,
                    prefixIcon: Icon(Icons.search_rounded,
                        color: AppColor.primaryYellow),
                    border: InputBorder.none,
                  ),
                ),
              ),

            Row(
              children: [
                TextButton(
                  onPressed: () {},
                  style: ButtonStyle(
                    backgroundColor:
                    MaterialStateProperty.all(AppColor.primaryYellow),
                    shape: MaterialStateProperty.all(RoundedRectangleBorder(
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(10),
                        bottomLeft: Radius.circular(10),
                      ),
                    )),
                  ),
                  child: CustomText(
                    color: AppColor.primaryBlue,
                    fontSize: 14,
                    title: 'Dashdoor',
                    fontFamily: 'Tajawal',
                    fontWeight: FontWeight.w500,
                  ),
                ),
                TextButton(
                  onPressed: () {},
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(
                        AppColor.greyBackGroundProfile),
                  ),
                  child: CustomText(
                    color: AppColor.blue,
                    fontSize: 14,
                    title: 'UberEats',
                    fontFamily: 'Tajawal',
                    fontWeight: FontWeight.w500,
                  ),
                ),
                TextButton(
                  onPressed: () {},
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(
                        AppColor.greyBackGroundProfile),
                    shape: MaterialStateProperty.all(RoundedRectangleBorder(
                      borderRadius: BorderRadius.only(
                        topRight: Radius.circular(10),
                        bottomRight: Radius.circular(10),
                      ),
                    )),
                  ),
                  child: CustomText(
                    color: AppColor.blue,
                    fontSize: 14,
                    title: 'Deliveroo',
                    fontFamily: 'Tajawal',
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 8,
            ),
            Container(
              height: 30,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: 10,
                shrinkWrap: true,
                itemBuilder: (BuildContext context, int index) => Padding(
                  padding: EdgeInsets.only(right: 8), // Adjust the spacing as needed
                  child: TextButton(
                    onPressed: () {},
                    style: ButtonStyle(
                      backgroundColor:
                      MaterialStateProperty.all(AppColor.greyBackGroundProfile),
                    ),
                    child: CustomText(
                      color: AppColor.blue,
                      fontSize: 16,
                      title: 'Original Pasta',
                      fontFamily: 'Tajawal',
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),
              ),
            ),


            Expanded(
              child: ListView.builder(
                itemCount: 10,
                shrinkWrap: true,
                itemBuilder: (BuildContext context, int index) =>
                    CustomDetailsFood(),
              ),
            ),
          ],
        ),
      ),
      //bottomNavigationBar: CustomNavBarDelivery() ,
    );
  }
}

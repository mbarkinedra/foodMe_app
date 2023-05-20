import 'package:custom_navigation_bar/custom_navigation_bar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:food_me/presentation/pages/homeTap/homeDetail.dart';
import 'package:food_me/presentation/widgets/customBtn.dart';
import 'package:food_me/presentation/widgets/customButton.dart';
import 'package:food_me/presentation/widgets/customCard.dart';
import 'package:food_me/presentation/widgets/customImage.dart';
import 'package:food_me/presentation/widgets/customText.dart';

import '../../../config/appColor.dart';
import '../../widgets/customFilter.dart';
import '../../widgets/customSortBy.dart';
import '../discoverTap/discoverPage.dart';
import '../menuTap/profile/profilePage.dart';
import '../offersTap/offerPage.dart';
import 'filtre.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedIndex = 0;



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
          child: Padding(
        padding: EdgeInsets.only(
          left: MediaQuery.of(context).size.width * .04,
          right: MediaQuery.of(context).size.width * .04,
        ),
        child: Column(
          // mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(height: MediaQuery.of(context).size.height * .1),
            Container(
              width: MediaQuery.of(context).size.width * 1,
              height: MediaQuery.of(context).size.height * .07,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(6),
                  color: Colors.white,
                  border: Border.all(color: Colors.grey, width: 2)),
              padding: EdgeInsets.only(
                  left: MediaQuery.of(context).size.width * .01,
                  top: MediaQuery.of(context).size.width * .01,
                  right: MediaQuery.of(context).size.width * .01,
                  bottom: MediaQuery.of(context).size.width * .01),
              child: Row(
                children: [
                  ImageIcon(
                    AssetImage("asset/images/location.png"),
                    color: AppColor.primaryBlue,
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  SizedBox(
                    width: MediaQuery.of(context).size.width * .8,
                    child: Text(
                      "6554 Al Wadi, Al Olaya, Riyadh 12211- 3511, Saudi ...",
                      style: TextStyle(
                        color: AppColor.primaryBlue,
                        fontSize: 16,
                      ),
                    ),
                  )
                ],
              ),
            ),
            SizedBox(
              height: 40,
            ),
            Padding(
              padding: EdgeInsets.only(
                  right: MediaQuery.of(context).size.width * .61),
              child: CustomButton(
                function: () {},
                text: "Delivery",
                image: "asset/images/delivery.png",
                borderRduis: Radius.circular(6),
                borderRaduis2: Radius.zero,
                backgroundColor: AppColor.primaryBlue,
                widthContainer: MediaQuery.of(context).size.width * .3,
                imageColor: Colors.white,
                fontSize: 14,
                textColor: Colors.white,
                heightContainer: MediaQuery.of(context).size.width * .1,
                padding: 10,
                //function: (){
                //  Navigator.of(context).push(MaterialPageRoute(builder: (context)=>)
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              children: [
                CustomButton(
                  function: () {
                    showModalBottomSheet(
                      context: context,
                      shape: const RoundedRectangleBorder(
                        // <-- SEE HERE
                        borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(25.0),
                          bottomRight: Radius.circular(25.0),
                        ),
                      ),
                      builder: (context) {
                        return SizedBox(height: 300, child: CustomSortBy());
                      },
                    );
                  },
                  text: "Sort By",
                  image: "asset/images/fleche.png",
                  borderRduis: Radius.circular(6),
                  borderRaduis2: Radius.circular(6),
                  backgroundColor: AppColor.greyCard,
                  widthContainer: MediaQuery.of(context).size.width * .35,
                  imageColor: AppColor.primaryBlue,
                  fontSize: 16,
                  textColor: AppColor.primaryBlue,
                  padding: 10,
                ),
                SizedBox(
                  width: 20,
                ),
                CustomButton(
                  function: () {
                    showModalBottomSheet(
                      context: context,
                      shape: const RoundedRectangleBorder(
                        // <-- SEE HERE
                        borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(25.0),
                          bottomRight: Radius.circular(25.0),
                        ),
                      ),
                      builder: (context) {
                        return SizedBox(
                            // height: 400,
                            child: FilterByChanged());
                      },
                    );
                  },
                  text: "Filter by",
                  image: "asset/images/fleche.png",
                  borderRduis: Radius.circular(6),
                  borderRaduis2: Radius.circular(6),
                  backgroundColor: AppColor.greyCard,
                  widthContainer: MediaQuery.of(context).size.width * .35,
                  imageColor: AppColor.primaryBlue,
                  fontSize: 16,
                  textColor: AppColor.primaryBlue,
                  padding: 10,
                ),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => HomeDetailPage()),
                );
              },
              child: Expanded(
                child: ListView.builder(
                  itemCount: 10,
                  shrinkWrap: true,
                  itemBuilder: (context, int index) => CustomCard(
                    image: "asset/images/pasta.png",
                    star: CustomImage(
                      image: "asset/images/star.png",
                      imageColor: AppColor.primaryYellow,
                    ),
                    cardColor: AppColor.greyCard,
                    titleText: CustomText(
                      title: 'La Casa Pasta',
                      fontSize: 16,
                      fontFamily: "Tajawal",
                      fontWeight: FontWeight.w700,
                      color: Colors.black,
                    ),
                    kmText: CustomText(
                      title: '2 km',
                      fontSize: 16,
                      color: AppColor.primaryBlue,
                    ),
                    title3Text: null,
                    title2Text: null,
                    coeur: CustomImage(
                      image: "asset/images/coeur.png",
                      imageColor: AppColor.primaryBlue,
                    ),
                    size: 100,
                    btn1: CustomBtn(
                      backColor: AppColor.btnColor,
                      raduis: 3,
                      function: () {},
                      text: CustomText(
                        color: AppColor.primaryBlue,
                        fontSize: 10,
                        title: 'Lunch',
                      ),
                    ),
                    btn2: CustomBtn(
                      backColor: AppColor.btnColor,
                      raduis: 3,
                      function: () {},
                      text: CustomText(
                        color: AppColor.primaryBlue,
                        fontSize: 10,
                        title: 'Dinner',
                      ),
                    ),
                    btn3: CustomBtn(
                      backColor: AppColor.btnColor,
                      raduis: 3,
                      function: () {},
                      text: CustomText(
                        color: AppColor.primaryBlue,
                        fontSize: 10,
                        title: 'Italian',
                      ),
                    ),
                    deliveryImage: 'asset/images/delivery.png',
                    deliveryTitle: CustomText(
                      title: 'Jahez',
                      fontFamily: "Tajawal",
                      fontWeight: FontWeight.w500,
                      fontSize: 20,
                      color: Colors.black,
                    ),
                    deliveryEvaluation: CustomText(
                      title: 'Best deal',
                      fontSize: 12,
                      fontFamily: "Tajawal",
                      fontWeight: FontWeight.w700,
                      color: AppColor.secondaryGreen,
                    ),
                    textTemps: CustomText(
                      title: '0.00',
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                      color: Colors.black,
                    ),
                    textSar: CustomText(
                      title: 'Sar',
                      fontSize: 12,
                      fontWeight: FontWeight.w500,
                      color: Colors.black,
                    ),
                    textTemps2: CustomText(
                      title: '35 min.',
                      fontWeight: FontWeight.w500,
                      fontSize: 16,
                      color: Colors.black,
                    ),
                    tempsImage: CustomImage(
                      image: 'asset/images/temps.png',
                      imageColor: AppColor.primaryBlue,
                    ),
                    btnCard: CustomButton(
                      function: () {
                        print("object");
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => HomeDetailPage()));
                      },
                      text: "Go to app",
                      image: "asset/images/go.png",
                      borderRduis: Radius.circular(6),
                      borderRaduis2: Radius.circular(6),
                      backgroundColor: AppColor.primaryYellow,
                      //  widthContainer: MediaQuery.of(context).size.width * .28,
                      imageColor: Colors.white,
                      fontSize: 16,
                      textColor: Colors.white,
                      padding: 10,
                    ),
                    viewAllText: CustomText(
                      title: 'View all deals (4)',
                      fontWeight: FontWeight.w400,
                      fontSize: 12,
                      color: AppColor.secondaryBlue,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      )),
    );
  }
}

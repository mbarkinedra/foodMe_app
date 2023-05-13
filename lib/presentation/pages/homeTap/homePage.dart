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
import '../discoverTap/discoverPage.dart';
import '../menuTap/profile/profilePage.dart';
import '../offersTap/offerPage.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
    switch (_selectedIndex) {
      case 0:
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => HomePage()),
        );
        break;
      case 1:
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => DiscoverPage()),
        );
        break;
      case 2:
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => OfferPage()),
        );
        break;
      case 3:
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => ProfilePage()),
        );
        break;
    }
  }

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
                  function: () {},
                  text: "Sort by",
                  image: "asset/images/fleche.png",
                  borderRduis: Radius.circular(6),
                  borderRaduis2: Radius.circular(6),
                  backgroundColor: AppColor.greyCard,
                  widthContainer: MediaQuery.of(context).size.width * .3,
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
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => BottomSheetFilter()));
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
            GestureDetector(
              onTap: (){
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => HomeDetailPage()),
                );
              },
              child: Padding(
                padding: const EdgeInsets.all(8),
                child: ListView.builder(
                  itemCount: 10,
                  shrinkWrap: true,
                  itemBuilder: (BuildContext context, int index) => CustomCard(
                    image: "asset/images/pasta.png",
                    star: CustomImage(
                      image: "asset/images/star.png",
                      imageColor: AppColor.primaryYellow,
                    ),
                    cardColor: AppColor.greyCard,
                    titleText: CustomText(
                      title: 'La Casa Pasta',
                      fontSize: 16,
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
                      fontSize: 20,
                      color: Colors.black,
                    ),
                    deliveryEvaluation: CustomText(
                      title: 'Best deal',
                      fontSize: 12,
                      color: AppColor.secondaryGreen,
                    ),
                    textTemps: CustomText(
                      title: '0.00',
                      fontSize: 16,
                      color: Colors.black,
                    ),
                    textSar: CustomText(
                      title: 'Sar',
                      fontSize: 12,
                      color: Colors.black,
                    ),
                    textTemps2: CustomText(
                      title: '35 min.',
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
                        Navigator.of(context).push(
                            MaterialPageRoute(builder: (context) => HomeDetailPage()));
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
      bottomNavigationBar: CustomNavigationBar(
        iconSize: 30.0,
        selectedColor: Color(0xff040307),
        strokeColor: Color(0x30040307),
        backgroundColor: AppColor.primaryBlue,
        items: [
          CustomNavigationBarItem(
            icon: Icon(
              Icons.search,
              color: Colors.white,
            ),
            title: Text(
              "Search",
              style: TextStyle(color: Colors.white, fontSize: 12),
            ),
          ),
          CustomNavigationBarItem(
            icon: ImageIcon(
              AssetImage('asset/images/discover.png'),
              color: Colors.white,
            ),
            title: Text(
              "Discover",
              style: TextStyle(color: Colors.white, fontSize: 12),
            ),
          ),
          CustomNavigationBarItem(
            icon: ImageIcon(
              AssetImage('asset/images/offer.png'),
              color: Colors.white,
            ),
            title: Text(
              "Offers",
              style: TextStyle(color: Colors.white, fontSize: 12),
            ),
          ),
          CustomNavigationBarItem(
            icon: ImageIcon(
              AssetImage('asset/images/menu.png'),
              color: Colors.white,
            ),
            title: Text(
              "Menu",
              style: TextStyle(color: Colors.white, fontSize: 12),
            ),
          ),
        ],
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
      ),
    );
  }
}

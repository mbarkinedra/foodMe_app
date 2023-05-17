import 'package:custom_navigation_bar/custom_navigation_bar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:food_me/presentation/pages/menuTap/language.dart';
import 'package:food_me/presentation/pages/menuTap/notificationPage.dart';

import '../../../../config/appColor.dart';
import '../../../widgets/customItemProfile.dart';
import '../../../widgets/customNavBar.dart';

import '../account/accountPage.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({Key key}) : super(key: key);

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
    switch (_selectedIndex) {
      case 0:
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => AccountPage()),
        );
        break;
      case 1:
        // Navigator.push(
        //   context,
        //   MaterialPageRoute(builder: (context) => ),
        // );
        break;
      case 2:
        // Navigator.push(
        //   context,
        //   MaterialPageRoute(builder: (context) => ),
        // );
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
        child: Column(
          children: [
            Column(
              children: [
                SizedBox(
                  height: MediaQuery.of(context).size.height * .06,
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * .1,
                  child: CustomNavBar(),
                ),
                SizedBox(
                  height: 14,
                ),
                Container(
                  width: 396,
                  height: 592,
                  padding: EdgeInsets.only(left: 16),
                  color: AppColor.greyBackGroundProfile,
                  child: Column(
                    children: [
                      SizedBox(
                        height: 12,
                      ),
                      GestureDetector(
                        onTap: (){ Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => AccountPage()),
                        );},
                        child: CustomItemProfile(
                          image: "asset/images/profile.png",
                          text: 'Account',
                          color: AppColor.primaryBlue,
                          fontSize: 20,
                          // colorImage: AppColor.primaryBlue,
                           colorBack: AppColor.greyBackGroundProfile,
                        ),
                      ),
                      Divider(
                        thickness: 1,
                      ),
                      GestureDetector(

                          onTap: (){ Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => LanguagePage()),
                          );

                        },
                        child: CustomItemProfile(
                          image: "asset/images/settings.png",
                          text: 'Settings',
                          color: AppColor.primaryBlue,
                          fontSize: 20,
                        //  colorImage: AppColor.primaryBlue,
                          colorBack: AppColor.greyBackGroundProfile,
                        ),
                      ),
                      Divider(
                        thickness: 1,
                      ),
                      GestureDetector(
    onTap: () {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => NotificatinPage()),
      );
    },

    child: CustomItemProfile(
                          image: 'asset/images/langage.png',
                          text: 'Language',
                          color: AppColor.primaryBlue,
                          fontSize: 20,
                         // colorImage: AppColor.primaryBlue,
                          colorBack: AppColor.greyBackGroundProfile,
                        ),
                      ),
                      Divider(
                        thickness: 1,
                      ),
                      CustomItemProfile(
                        image: "asset/images/help.png",
                        text: 'Help and support',
                        color: AppColor.primaryBlue,
                        fontSize: 20,
                      // /  colorImage: AppColor.primaryBlue,
                        colorBack: AppColor.greyBackGroundProfile,
                      ),
                      Divider(
                        thickness: 1,
                      ),
                      CustomItemProfile(
                        image: "asset/images/LOGO (1).png",
                        text: 'Company info',
                        color: AppColor.primaryBlue,
                        fontSize: 20,
                      //  colorImage: AppColor.primaryBlue,
                        colorBack: AppColor.greyBackGroundProfile,
                      ),
                      Divider(
                        thickness: 1,
                      ),
                     SizedBox(
                       height:200 ,
                     ),
                      CustomItemProfile(
                        image: "asset/images/logOut.png",
                        text: 'Log out',
                        color: AppColor.primaryYellow,
                        fontSize: 20,
                        // colorImage: AppColor.primaryYellow,
                        colorBack: AppColor.greyBackGroundProfile,
                      ),
                    ],
                  ),
                )
              ],
            ),

          ],
        ),
      ),
      bottomNavigationBar: CustomNavigationBar(
        iconSize: 30.0,
        selectedColor: Color(0xff040307),
        strokeColor: Color(0x30040307),
        unSelectedColor: Color(0xffacacac),
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
        // currentIndex: _selectedIndex,
        // onTap: _onItemTapped,
      ),
      // bottomNavigationBar: ,
    );
  }
}

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../controller/home_controller.dart';


class HomeScreen extends GetView<HomeController> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: GetBuilder<HomeController>(builder: (logic) {
        return Scaffold(
          body: logic.currentScreen,
          bottomNavigationBar: BottomNavigationBar(
            type: BottomNavigationBarType.fixed,
            elevation: 5,
            selectedItemColor: Theme.of(context).secondaryHeaderColor,
            currentIndex: logic.navigatorValue,
            unselectedItemColor: Colors.white70,
            backgroundColor: Theme.of(context).primaryColor,
            showSelectedLabels: true,
            showUnselectedLabels: true,
            onTap: logic.changeSelectedValue,
            items: [
              BottomNavigationBarItem(
                icon: Icon(
                  Icons.search,
                ),
                label: 'search',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.restaurant_menu),
                label: 'discover',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.local_offer),
                label: 'offer',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.menu),
                label: 'Menu',
              ),
            ],
          ),
        );
      }),
    );
  }
}
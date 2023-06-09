import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../presentation/pages/discoverTap/discoverPage.dart';
import '../presentation/pages/homeTap/homePage.dart';
import '../presentation/pages/menuTap/profile/profilePage.dart';
import '../presentation/pages/offersTap/offerPage.dart';


class HomeController extends GetxController {
  PageController pageController = PageController();
  int pageNumber = 0;
  int initialPage = 0;

  updatePageChange(int i) {
    pageNumber = i;
    update();
  }

  @override
  void onReady() {
    super.onReady();
  }

  int _navigatorValue = 0;
  String _currentPage = 'Page1';
  var _navigatorKey;

  List<String> _pageKeys = ['Page1', 'Page2', 'Page3', 'Page4'];

  get navigatorValue => _navigatorValue;

  get currentPage => _currentPage;

  get navigatorKey => _navigatorKey;

  get navigatorKeys => _navigatorKeys;

  get pageKeys => _pageKeys;
  static final Map<String, GlobalKey<NavigatorState>> _navigatorKeys = {
    'Page1': GlobalKey<NavigatorState>(),
    'Page2': GlobalKey<NavigatorState>(),
    'Page3': GlobalKey<NavigatorState>(),
    'Page4': GlobalKey<NavigatorState>(),
  };

  Widget currentScreen = Container();

  @override
  void onInit() {
    super.onInit();
    currentScreen = PageToView(
      navigatorKey: _navigatorKeys[_pageKeys[0]],
      tabItem: _pageKeys[0],
    ); //=HomeView();
  }

  changeSelectedValue(int selectedValue) {
    _navigatorValue = selectedValue;
    _currentPage = _pageKeys[selectedValue];
    _navigatorKey = _navigatorKeys[_currentPage];

    currentScreen = PageToView(
      navigatorKey: _navigatorKey,
      tabItem: _currentPage,
    );

    update();
  }

  Widget buildOffStageNavigator(String tabItem) {
    return Offstage(
      offstage: _currentPage != tabItem,
      child: PageToView(
        navigatorKey: _navigatorKeys[tabItem],
        tabItem: tabItem,
      ),
    );
  }
}

class PageToView extends StatelessWidget {
   GlobalKey<NavigatorState> navigatorKey;
   String tabItem;

  PageToView({@required this.navigatorKey, @required this.tabItem});

  @override
  Widget build(BuildContext context) {
    Widget currentScreen = Container();

    switch (tabItem) {
      case 'Page1':
        {
          currentScreen = HomePage();

          break;
        }
      case 'Page2':
        {
          currentScreen = DiscoverPage();

          break;
        }
      case 'Page3':
        {
          currentScreen = OfferPage();
          break;
        }
      case 'Page4':
        {
          currentScreen = ProfilePage();
          break;
        }
    }

    return Navigator(
      key: navigatorKey,
      onGenerateRoute: (routeStings) {
        return MaterialPageRoute(builder: (context) => currentScreen);
      },
    );
  }
}
import 'package:flutter/material.dart';
import 'package:food_me/presentation/pages/binding/binding.dart';
import 'package:food_me/presentation/pages/homeTap/homePage.dart';
import 'package:food_me/presentation/pages/menuTap/notificationPage.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';

void main() {
  runApp( MyApp());
}

class MyApp extends StatelessWidget {

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      initialBinding: AllBindings(),
      initialRoute: '/',
      routes: {
        '/': (context)=> HomePage(),
      },
    );
  }
}


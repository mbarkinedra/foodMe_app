

import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_instance/src/bindings_interface.dart';

import '../menuTap/languageController.dart';

class AllBindings extends Bindings {
  @override
  void dependencies() async {


    Get.put<LanguageController>(LanguageController());

  }
}
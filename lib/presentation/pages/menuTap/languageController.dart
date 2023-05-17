import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'language.dart';

class LanguageController extends GetxController {
  SingingCharacter lan = SingingCharacter.English;

  updateToEnglish() {
    var locale = Locale('en', 'En');
    Get.updateLocale(locale);
   // SecureStorage.writeSecureData(key: 'lan', value: "en");
    lan = SingingCharacter.English;
    update();
  }

  updateToArabic() {
    var locale = Locale('ar', 'Ar');
    Get.updateLocale(locale);
   // SecureStorage.writeSecureData(key: 'lan', value: "fr");
    lan = SingingCharacter.Arabic;
    update();
  }
}
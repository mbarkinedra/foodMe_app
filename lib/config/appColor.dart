import 'dart:ui';

class AppColor {
  static Color boxShadow = HexColor("#000040");
  static Color primaryBlue = HexColor("#0F2546");
  static Color primaryYellow = HexColor("#FFBF3E");
  static Color greyCard = HexColor("#F3F5F6");
  static Color btnColor =HexColor("#DCE0E4");
  static Color secondaryGreen =HexColor("#4FBF74");
  static Color secondaryBlue =HexColor("#3486B3");
  static Color blackRussian =HexColor("#00001A");
  static Color greyProfile =HexColor("#EBEBEB");
  static Color greyBackGroundProfile =HexColor("#F5F5F5");
  static Color blue =HexColor("#6B788C");


}

class HexColor extends Color {
  static int _getColorFromHex(String hexColor) {
    hexColor = hexColor.toUpperCase().replaceAll("#", "");
    if (hexColor.length == 6) {
      hexColor = "FF" + hexColor;
    }
    return int.parse(hexColor, radix: 16);
  }

  HexColor(final String hexColor) : super(_getColorFromHex(hexColor));
}

import 'dart:ui';

abstract class AppColors {
  // static Color primaryColor = const Color(0xff5669FF);
  static Color primaryColor = HexColor("5669FF");
  static Color secondaryColor = const Color(0xff00F8FF);

  static Color accentRedColor = const Color(0xffF0635A);
  static Color accentOrangeColor = const Color(0xffF59762);
  static Color accentGreenColor = const Color(0xff29D697);
  static Color accentDarkCyanColor = const Color(0xff46CDFB);
  static Color accentPurpleColor = const Color(0xff8C3EF1);
  static Color accentYellowColor = const Color(0xffFDC400);

  static Color bgBlackColor = const Color(0xff2D2D3A);
  static Color bgDarkColor = const Color(0xff393948);
  static Color bgGrayColor = const Color(0xffE5E5E5);
}

class HexColor extends Color {
  static int _getColorFromHex(String hexColor) {
    hexColor = hexColor.toUpperCase().replaceAll("#", "");
    if (hexColor.length == 6) {
      hexColor = "FF$hexColor";
    }
    return int.parse(hexColor, radix: 16);
  }

  HexColor(final String hexColor) : super(_getColorFromHex(hexColor));
}
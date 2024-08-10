import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
class AppSVGAssets {
  static const doors = "assets/images/svg/doors.svg";
  static const parking = 'assets/images/svg/parking.svg';
  static const pavements = 'assets/images/svg/pavment.svg';
  static const profile = 'assets/images/svg/profile.svg';
  static const tiolet = 'assets/images/svg/tiolet.svg';


  static SvgPicture getWidget(String assetName,{ BoxFit fit = BoxFit.none, Color? color,
    double? width, double? height}) {
    if (width != null && height != null) {
      return SvgPicture.asset(
        assetName,
        fit: fit,
        color: color,
        width: width,
        height: height,
      );
    }
    return SvgPicture.asset(
        assetName,
        fit: fit,
        color: color
    );
  }
}
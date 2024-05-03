import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Constants {
  Constants._();
  static const String title = 'Pokedex';

  static TextStyle getTitleTextStyle() {
    return const TextStyle(
        color: Colors.white, fontWeight: FontWeight.bold, fontSize: 40);
  }

  static TextStyle getPokemonNameTextStyle() {
    return const TextStyle(
        color: Colors.white, fontWeight: FontWeight.bold, fontSize: 22);
  }

  static TextStyle getTypeChipTextStyle() {
    return const TextStyle(color: Colors.white, fontSize: 20);
  }

  static _calculateFontSize(int size) {
    if (ScreenUtil().orientation == Orientation.portrait) {
      return size.sp;
    } else {
      return (size * 1.5).sp;
    }
  }

  static getPokeInfoTextStyle() {
    return TextStyle(fontSize: _calculateFontSize(65), color: Colors.black);
  }

   static getPokeInfoLabelTextStyle() {
    return TextStyle(fontSize: _calculateFontSize(70),fontWeight: FontWeight.bold, color: Colors.black);
  }
}

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pokebox/constants/constants.dart';
import 'package:pokebox/constants/ui_helper.dart';

class AppTitle extends StatefulWidget {
  const AppTitle({super.key});

  @override
  State<AppTitle> createState() => _AppTitleState();
}

class _AppTitleState extends State<AppTitle> {
  String pokeballImageUrl = 'assets/pokeball.png';
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: UIHelper.getAppTitleWidgetHeight(),
      child: Stack(
        children: [
          Align(
            alignment: Alignment.centerLeft,
            child: Text(Constants.title,style: Constants.getTitleTextStyle(),)), 
        Align(
          alignment: Alignment.topRight,
          child: Image.asset(pokeballImageUrl,
          width: 200,
          
          fit: BoxFit.fitWidth,))],
      ),
    );
  }
}

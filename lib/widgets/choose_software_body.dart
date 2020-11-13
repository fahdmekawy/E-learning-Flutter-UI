import 'package:e_learning/constants.dart';
import 'package:e_learning/screens/choose_software.dart';
import 'package:e_learning/size_config.dart';
import 'package:e_learning/widgets/progress.dart';
import 'package:e_learning/widgets/progress_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ChooseSoftwareBody extends StatelessWidget {
  const ChooseSoftwareBody({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          color: kBackgroundColor,
          width: SizeConfig.screenWidth,
          height: SizeConfig.screenHeight,
        ),
        Positioned(
          right: getProportionateScreenWidth(-100),
          top: getProportionateScreenWidth(-100),
          child: SvgPicture.asset("assets/icons/Path 18.svg"),
        ),
        Positioned(
          left: getProportionateScreenWidth(-150),
          top: getProportionateScreenWidth(50),
          child: SvgPicture.asset("assets/icons/Path 22.svg"),
        ),
        Positioned(
          left: getProportionateScreenWidth(60),
          top: getProportionateScreenWidth(180),
          child: Text(
            "Choose what\nto learn",
            textAlign: TextAlign.center,
            style: TextStyle(
                fontSize: 50, color: Colors.white, fontWeight: FontWeight.bold),
          ),
        ),
        Positioned(
          right: getProportionateScreenWidth(20),
          top: getProportionateScreenWidth(40),
          child: Container(
            height: getProportionateScreenWidth(50),
            width: getProportionateScreenWidth(50),
            decoration: BoxDecoration(
              color: Colors.white.withOpacity(0.3),
              borderRadius: BorderRadius.circular(10),
            ),
            child: Center(
              child: Icon(
                Icons.menu,
                color: Colors.white,
                size: 30,
              ),
            ),
          ),
        ),
        Positioned(
          left: getProportionateScreenWidth(20),
          top: getProportionateScreenWidth(40),
          child: InkWell(
            onTap: () {
              Navigator.pop(context);
            },
            child: Container(
              height: getProportionateScreenWidth(50),
              width: getProportionateScreenWidth(50),
              decoration: BoxDecoration(
                color: Colors.white.withOpacity(0.3),
                borderRadius: BorderRadius.circular(10),
              ),
              child: Center(
                child: Icon(
                  Icons.arrow_back_outlined,
                  color: Colors.white,
                  size: 30,
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}

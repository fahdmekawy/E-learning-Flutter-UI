import 'package:e_learning/screens/choose_software.dart';
import 'package:e_learning/widgets/progress.dart';
import 'package:e_learning/widgets/progress_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../size_config.dart';

class Category_body extends StatelessWidget {
  const Category_body({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);

    return Stack(
      children: [
        Container(
          color: Color(0xFF5AA6C8),
          width: SizeConfig.screenWidth,
          height: SizeConfig.screenHeight,
        ),
        Positioned(
          right: getProportionateScreenWidth(-120),
          top: getProportionateScreenWidth(-100),
          child: SvgPicture.asset("assets/icons/Blob3 blue.svg"),
        ),
        Positioned(
          left: getProportionateScreenWidth(-150),
          top: getProportionateScreenWidth(20),
          child: SvgPicture.asset("assets/icons/Blob 1 blue.svg"),
        ),
        Positioned(
          right: getProportionateScreenWidth(50),
          top: getProportionateScreenWidth(210),
          child: SvgPicture.asset("assets/icons/Blob 2 blue.svg"),
        ),
        Positioned(
          left: getProportionateScreenWidth(110),
          top: getProportionateScreenWidth(150),
          child: Text(
            "UI/UX\nCourses",
            textAlign: TextAlign.center,
            style: TextStyle(
                fontSize: 50, color: Colors.white, fontWeight: FontWeight.bold),
          ),
        ),
        Positioned(
          right: getProportionateScreenWidth(30),
          top: getProportionateScreenWidth(30),
          child: InkWell(
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => ChooseSoftware()));
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
                  Icons.menu,
                  color: Colors.white,
                  size: 30,
                ),
              ),
            ),
          ),
        ),
        Positioned(
          left: getProportionateScreenWidth(30),
          top: getProportionateScreenWidth(30),
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

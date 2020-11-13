import 'package:e_learning/constants.dart';
import 'package:e_learning/size_config.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class CoursesCard extends StatelessWidget {
  final String image, title;
  final bool isSelected;
  final Color color;
  final int numCourses;

  const CoursesCard({
    Key key,
    this.image,
    this.title,
    this.isSelected,
    this.color,
    this.numCourses,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          margin: EdgeInsets.only(bottom: 10),
          height: 120,
          width: MediaQuery.of(context).size.width,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(40),
            color: Colors.white,
          ),
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Row(
              children: [
                Container(
                  height: getProportionateScreenWidth(80),
                  width: getProportionateScreenWidth(80),
                  decoration:
                      BoxDecoration(color: color, shape: BoxShape.circle),
                  child: Center(
                    child: SvgPicture.asset(
                      image,
                    ),
                  ),
                ),
                SizedBox(
                  width: getProportionateScreenWidth(15),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: getProportionateScreenWidth(30),
                    ),
                    Text(
                      title,
                      style: TextStyle(
                        fontSize: 22,
                        fontWeight: FontWeight.bold,
                        color: kSecondaryColor,
                      ),
                    ),
                    Text(
                      "$numCourses Course",
                      style: TextStyle(
                        color: kBackgroundColor,
                      ),
                    )
                  ],
                ),
                Spacer(),
                isSelected
                    ? Container(
                        height: getProportionateScreenWidth(60),
                        width: getProportionateScreenWidth(60),
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: kLightColor,
                        ),
                        child: Center(
                          child: SvgPicture.asset(
                            "assets/icons/Path 4.svg",
                            width: getProportionateScreenWidth(20),
                            height: getProportionateScreenWidth(20),
                          ),
                        ),
                      )
                    : SvgPicture.asset(
                        "assets/icons/Inactive icon.svg",
                        width: getProportionateScreenWidth(60),
                        height: getProportionateScreenWidth(60),
                      )
              ],
            ),
          ),
        ),
        Container(
          width: SizeConfig.screenWidth,
          height: getProportionateScreenWidth(2),
          color: Color(0xFFEEEEEE),
        )
      ],
    );
  }
}

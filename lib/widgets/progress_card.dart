import 'package:e_learning/constants.dart';
import 'package:e_learning/size_config.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class ProgressCard extends StatelessWidget {
  final String image, title;
  final bool isActive;

  const ProgressCard({
    Key key,
    this.image,
    this.title,
    this.isActive = true,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 10),
      height: getProportionateScreenWidth(130),
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(40),
        color: isActive ? Color(0xFFFAE4F4) : Color(0xFFFFF5E5),
      ),
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Row(
          // mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SvgPicture.asset(
              image,
              width: getProportionateScreenWidth(60),
              height: getProportionateScreenWidth(60),
            ),
            SizedBox(
              width: getProportionateScreenWidth(15),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: kSecondaryColor,
                  ),
                ),
                SizedBox(
                  height: getProportionateScreenWidth(5),
                ),
                Text(
                  "10 hours, 19 lessons",
                  style: TextStyle(
                    color: kBackgroundColor,
                  ),
                )
              ],
            ),
            Spacer(),
            Text(
              "25%",
              style: TextStyle(
                fontSize: 20,
                color: kBackgroundColor,
              ),
            ),
            SizedBox(
              width: 5,
            ),
            SvgPicture.asset(
              "assets/icons/Play button 25.svg",
              height: getProportionateScreenWidth(50),
              width: getProportionateScreenWidth(50),
            )
          ],
        ),
      ),
    );
  }
}

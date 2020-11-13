import 'package:e_learning/constants.dart';
import 'package:e_learning/screens/category_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:e_learning/size_config.dart';

class Header extends StatefulWidget {
  const Header({
    Key key,
  }) : super(key: key);

  @override
  _HeaderState createState() => _HeaderState();
}

class _HeaderState extends State<Header> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      overflow: Overflow.visible,
      children: [
        Container(
          height: getProportionateScreenHeight(350),
          width: SizeConfig.screenWidth,
          decoration: BoxDecoration(
            color: kBackgroundColor,
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(65.0),
              bottomRight: Radius.circular(65.0),
            ),
          ),
        ),
        Positioned(
          left: getProportionateScreenWidth(-160),
          bottom: getProportionateScreenWidth(60),
          child: SvgPicture.asset(
            "assets/icons/Blob 1.svg",
            alignment: Alignment.topCenter,
          ),
        ),
        Positioned(
          bottom: getProportionateScreenWidth(80),
          left: getProportionateScreenWidth(150),
          child: SvgPicture.asset("assets/icons/Blob 2.svg"),
        ),
        Positioned(
          right: getProportionateScreenWidth(15),
          top: getProportionateScreenWidth(30),
          child: SvgPicture.asset(
            "assets/icons/Boy Illustration.svg",
            height: getProportionateScreenHeight(400),
            width: getProportionateScreenWidth(400),
          ),
        ),
        Positioned(
          right: getProportionateScreenWidth(15),
          top: getProportionateScreenWidth(30),
          child: Container(
            height: getProportionateScreenWidth(40),
            width: getProportionateScreenWidth(40),
            decoration: BoxDecoration(
              color: Colors.white.withOpacity(0.3),
              borderRadius: BorderRadius.circular(10),
            ),
            child: Center(
              child: IconButton(
                icon: Icon(Icons.menu),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => Category(),
                    ),
                  );
                },
              ),
            ),
          ),
        ),
        Positioned(
          left: getProportionateScreenWidth(40),
          bottom: getProportionateScreenWidth(80),
          child: Container(
            height: getProportionateScreenWidth(50),
            width: SizeConfig.screenWidth - 75,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(20),
            ),
            child: Center(
              child: Padding(
                padding: EdgeInsets.only(left: 10, right: 10),
                child: TextField(
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    hintText: "Search for new knowledge!",
                    hintStyle: TextStyle(
                        color: kSecondaryColor,
                        fontSize: 13,
                        fontWeight: FontWeight.bold),
                    suffixIcon: Icon(
                      Icons.search,
                      color: kSecondaryColor,
                    ),
                  ),
                ),
              ),
            ),
          ),
        ),
        Positioned(
            left: getProportionateScreenWidth(40),
            bottom: getProportionateScreenWidth(-100),
            child: Container(
              height: getProportionateScreenWidth(160),
              width: MediaQuery.of(context).size.width - 75,
              decoration: BoxDecoration(
                color: kLightColor,
                borderRadius: BorderRadius.circular(30),
              ),
              child: Padding(
                padding: const EdgeInsets.only(top: 20, left: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Align(
                      alignment: Alignment.topLeft,
                      child: Text(
                        "Start learning \nnew Staff!",
                        style: TextStyle(
                          color: kSecondaryColor,
                          fontSize: 25,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: getProportionateScreenWidth(10),
                    ),
                    SizedBox(
                      height: getProportionateScreenWidth(50),
                      width: getProportionateScreenWidth(200),
                      child: RaisedButton(
                          color: Color(0xFFF18C8E),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(18.0),
                          ),
                          onPressed: () {},
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Text(
                                "Categories",
                                style: TextStyle(
                                    color: kLightColor,
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold),
                              ),
                              Icon(
                                Icons.arrow_forward_outlined,
                                color: kLightColor,
                              )
                            ],
                          )),
                    )
                  ],
                ),
              ),
            )),
        Positioned(
          right: getProportionateScreenWidth(3),
          bottom: getProportionateScreenWidth(-60),
          child: SvgPicture.asset(
            "assets/icons/undraw_researching_22gp.svg",
            width: getProportionateScreenWidth(60),
            height: getProportionateScreenWidth(60),
          ),
        )
      ],
    );
  }
}

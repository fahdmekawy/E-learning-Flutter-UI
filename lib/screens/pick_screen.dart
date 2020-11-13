import 'package:dotted_border/dotted_border.dart';
import 'package:e_learning/helper/course_data.dart';
import 'package:e_learning/model/courses_model.dart';
import 'package:e_learning/screens/course_screen.dart';
import 'package:e_learning/widgets/category_body.dart';
import 'package:e_learning/widgets/choose_software_body.dart';
import 'package:e_learning/widgets/courses_card.dart';
import 'package:e_learning/widgets/pick_body.dart';
import 'package:e_learning/widgets/progress_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:sliding_up_panel/sliding_up_panel.dart';
import 'package:e_learning/helper/data.dart';
import 'package:e_learning/model/category.dart';

import '../size_config.dart';

class PickScreen extends StatefulWidget {
  @override
  _PickScreenState createState() => _PickScreenState();
}

class _PickScreenState extends State<PickScreen> {
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      body: SlidingUpPanel(
        maxHeight: 600,
        minHeight: 500,
        padding: EdgeInsets.only(top: 10),
        borderRadius: BorderRadius.only(
            topRight: Radius.circular(40), topLeft: Radius.circular(40)),
        panelBuilder: (scrollController) =>
            buildSlidingPabel(scrollController: scrollController),
        body: PickBody(),
      ),
    );
  }

  Widget buildSlidingPabel({@required ScrollController scrollController}) =>
      ListView(
        padding: EdgeInsets.only(top: 10),
        controller: scrollController,
        children: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              children: [
                Container(
                  height: 7,
                  width: 75,
                  decoration: BoxDecoration(
                      color: Colors.grey[400].withOpacity(0.5),
                      borderRadius: BorderRadius.circular(30)),
                ),
                SizedBox(
                  height: 40,
                ),
                Stack(
                  children: [
                    Container(
                      margin: EdgeInsets.only(bottom: 10),
                      height: 130,
                      width: MediaQuery.of(context).size.width,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Colors.white,
                          border:
                              Border.all(width: 1, color: Color(0xFFF18C8E))),
                      child: Padding(
                        padding: EdgeInsets.only(right: 30, left: 30),
                        child: Row(
                          children: [
                            Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Free Trial",
                                  style: TextStyle(
                                      fontSize: 25,
                                      color: Color(0xFFF18C8E),
                                      fontWeight: FontWeight.bold),
                                ),
                                Text(
                                  "14 Days",
                                  style: TextStyle(
                                      fontSize: 15,
                                      color: Color(0xFFF18C8E),
                                      fontWeight: FontWeight.w400),
                                ),
                              ],
                            ),
                            Spacer(),
                            Text(
                              r"$0",
                              style: TextStyle(
                                  fontSize: 30,
                                  color: Color(0xFFF18C8E),
                                  fontWeight: FontWeight.bold),
                            )
                          ],
                        ),
                      ),
                    ),
                    Positioned(
                      right: 0,
                      child: ClipPath(
                        clipper: MyClipper(),
                        child: Container(
                          decoration: BoxDecoration(
                              color: Color(0xFFF18C8E),
                              borderRadius: BorderRadius.only(
                                  topRight: Radius.circular(20))),
                          height: 70,
                          width: 70,
                        ),
                      ),
                    ),
                    Positioned(
                      right: 5,
                      top: 5,
                      child: Icon(
                        Icons.done,
                        color: Colors.white,
                        size: 25,
                      ),
                    )
                  ],
                ),
                DottedBorder(
                  borderType: BorderType.RRect,
                  radius: Radius.circular(20),
                  color: Colors.grey[400],
                  child: Container(
                    // margin: EdgeInsets.only(bottom: 10),
                    height: 130,
                    width: MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.white,
                    ),
                    child: Padding(
                      padding: EdgeInsets.only(right: 30, left: 30),
                      child: Row(
                        children: [
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Medium",
                                style: TextStyle(
                                    fontSize: 25,
                                    color: Color(0xFF305F72),
                                    fontWeight: FontWeight.bold),
                              ),
                              Text(
                                "5 courses/mo.",
                                style: TextStyle(
                                    fontSize: 15,
                                    color: Color(0xFFF18C8E),
                                    fontWeight: FontWeight.w400),
                              ),
                            ],
                          ),
                          Spacer(),
                          Text(
                            r"$14.99",
                            style: TextStyle(
                                fontSize: 30,
                                color: Color(0xFFF18C8E),
                                fontWeight: FontWeight.bold),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                DottedBorder(
                  borderType: BorderType.RRect,
                  radius: Radius.circular(20),
                  color: Colors.grey[400],
                  child: Container(
                    margin: EdgeInsets.only(bottom: 10),
                    height: 130,
                    width: MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.white,
                    ),
                    child: Padding(
                      padding: EdgeInsets.only(right: 30, left: 30),
                      child: Row(
                        children: [
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Intermadiate",
                                style: TextStyle(
                                    fontSize: 25,
                                    color: Color(0xFF305F72),
                                    fontWeight: FontWeight.bold),
                              ),
                              Text(
                                "10 courses/mo.",
                                style: TextStyle(
                                    fontSize: 15,
                                    color: Color(0xFFF18C8E),
                                    fontWeight: FontWeight.w400),
                              ),
                            ],
                          ),
                          Spacer(),
                          Text(
                            r"$24.99",
                            style: TextStyle(
                                fontSize: 30,
                                color: Color(0xFFF18C8E),
                                fontWeight: FontWeight.bold),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 40),
                  height: 80,
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20),
                    border: Border.all(
                      color: Color(0xFFE5E5E5),
                    ),
                  ),
                  child: Row(
                    children: [
                      SvgPicture.asset(
                        "assets/icons/Visa Icon.svg",
                        width: 30,
                        height: 30,
                      ),
                      SizedBox(
                        width: 15,
                      ),
                      Expanded(
                        child: DropdownButton(
                          isExpanded: true,
                          underline: SizedBox(),
                          icon: Icon(
                            Icons.keyboard_arrow_down,
                            size: 35,
                            color: Color(0xFF305F72),
                          ),
                          value: "Visa Card   *079",
                          items: [
                            'Visa Card   *079',
                          ].map<DropdownMenuItem<String>>((String value) {
                            return DropdownMenuItem<String>(
                              value: value,
                              child: Text(
                                value,
                                style: TextStyle(color: Color(0xFF305F72)),
                              ),
                            );
                          }).toList(),
                          onChanged: (value) {},
                        ),
                      )
                    ],
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Text(
                  "Terms & Conditions",
                  style: TextStyle(fontSize: 12, color: Colors.grey[700]),
                ),
                InkWell(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => CourseScreen()));
                  },
                  child: Container(
                    margin: EdgeInsets.all(20),
                    width: 400,
                    height: 100,
                    decoration: BoxDecoration(
                      color: Color(0xFFFEF3F3),
                      borderRadius: BorderRadius.circular(40),
                    ),
                    child: Center(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "Continue with Payment",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                color: Color(0xFFF18C8E),
                                fontSize: 20,
                                fontWeight: FontWeight.bold),
                          ),
                          SizedBox(
                            width: 50,
                          ),
                          Icon(
                            Icons.arrow_forward,
                            color: Color(0xFFF18C8E),
                            size: 30,
                          )
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          )
        ],
      );
}

class MyClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    var path = new Path();
    path.lineTo(0, size.height - 80);
    var controllPoint = Offset(100, size.height);
    var endPoint = Offset(size.width, size.height);
    path.quadraticBezierTo(
        controllPoint.dx, controllPoint.dy, endPoint.dx, endPoint.dy);
    path.lineTo(size.width, size.height);
    path.lineTo(size.width, 0);
    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return true;
  }
}

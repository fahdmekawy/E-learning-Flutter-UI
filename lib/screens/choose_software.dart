import 'package:e_learning/helper/course_data.dart';
import 'package:e_learning/model/courses_model.dart';
import 'package:e_learning/screens/pick_screen.dart';
import 'package:e_learning/size_config.dart';
import 'package:e_learning/widgets/category_body.dart';
import 'package:e_learning/widgets/choose_software_body.dart';
import 'package:e_learning/widgets/courses_card.dart';
import 'package:e_learning/widgets/progress_card.dart';
import 'package:flutter/material.dart';
import 'package:sliding_up_panel/sliding_up_panel.dart';
import 'package:e_learning/helper/data.dart';
import 'package:e_learning/model/category.dart';

class ChooseSoftware extends StatefulWidget {
  @override
  _ChooseSoftwareState createState() => _ChooseSoftwareState();
}

class _ChooseSoftwareState extends State<ChooseSoftware> {
  List<CoursesModel> courses = new List<CoursesModel>();
  @override
  void initState() {
    super.initState();
    courses = getCourses();
  }

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return SafeArea(
      child: Scaffold(
        body: SlidingUpPanel(
          maxHeight: getProportionateScreenWidth(500),
          minHeight: getProportionateScreenWidth(50),
          // footer:
          padding: EdgeInsets.only(top: 10),
          borderRadius: BorderRadius.only(
              topRight: Radius.circular(40), topLeft: Radius.circular(40)),
          panelBuilder: (scrollController) =>
              buildSlidingPabel(scrollController: scrollController),
          body: ChooseSoftwareBody(),
        ),
      ),
    );
  }

  Widget buildSlidingPabel({@required ScrollController scrollController}) =>
      ListView(
        controller: scrollController,
        children: [
          ListView.builder(
            controller: scrollController,
            padding: EdgeInsets.symmetric(horizontal: 20),
            // padding: EdgeInsets.only(top: 20, left: 20, right: 20, bottom: 130),
            scrollDirection: Axis.vertical,
            shrinkWrap: true,
            itemCount: courses.length,
            itemBuilder: (context, index) => CoursesCard(
              image: courses[index].imageUrl,
              title: courses[index].courseName,
              color: courses[index].color,
              isSelected: courses[index].isSelected,
              numCourses: courses[index].numCourses,
            ),
          ),
          InkWell(
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => PickScreen()));
            },
            child: Container(
              margin: EdgeInsets.all(20),
              width: getProportionateScreenWidth(400),
              height: getProportionateScreenWidth(100),
              decoration: BoxDecoration(
                color: Color(0xFFFEF3F3),
                borderRadius: BorderRadius.circular(40),
              ),
              child: Center(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Continue with 3",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          color: Color(0xFFF18C8E),
                          fontSize: 25,
                          fontWeight: FontWeight.w600),
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
      );
}

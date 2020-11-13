import 'package:e_learning/helper/course_details.dart';
import 'package:e_learning/model/course_details.dart';
import 'package:e_learning/screens/video_screen.dart';
import 'package:e_learning/widgets/CourseBody.dart';
import 'package:e_learning/widgets/category_body.dart';
import 'package:e_learning/widgets/progress_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:sliding_up_panel/sliding_up_panel.dart';
import 'package:e_learning/helper/data.dart';
import 'package:e_learning/model/category.dart';

class CourseScreen extends StatefulWidget {
  @override
  _CourseScreenState createState() => _CourseScreenState();
}

class _CourseScreenState extends State<CourseScreen> {
  List<CourseDetailsModel> details = new List<CourseDetailsModel>();
  @override
  void initState() {
    super.initState();
    details = getDetails();
  }

  @override
  Widget build(BuildContext context) {
    // SizeConfig().init(context);
    return Scaffold(
      body: Stack(
        children: [
          CourseBody(),
          DraggableScrollableSheet(
              initialChildSize: 0.4,
              minChildSize: 0.2,
              maxChildSize: 0.8,
              builder:
                  (BuildContext context, ScrollController scrollController) {
                return Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(
                        topRight: Radius.circular(30),
                        topLeft: Radius.circular(30),
                      ),
                      color: Colors.white),
                  child: SingleChildScrollView(
                    controller: scrollController,
                    child: Column(
                      children: [
                        SizedBox(
                          height: 20,
                        ),
                        Container(
                          height: 7,
                          width: 75,
                          decoration: BoxDecoration(
                            color: Colors.grey[400].withOpacity(0.5),
                            borderRadius: BorderRadius.circular(20),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.symmetric(
                              horizontal: 20, vertical: 20),
                          child: Row(
                            children: [
                              Container(
                                height: 80,
                                width: 80,
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: Color(0xFFF18C8E),
                                ),
                                child: Center(
                                  child: Container(
                                    width: 70,
                                    height: 70,
                                    decoration: BoxDecoration(
                                      shape: BoxShape.circle,
                                      color: Colors.white,
                                    ),
                                    child: CircleAvatar(
                                      backgroundImage:
                                          AssetImage("assets/images/fahd.jpg"),
                                      backgroundColor: Colors.transparent,
                                    ),
                                  ),
                                ),
                              ),
                              SizedBox(width: 10),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "Fahd Mekawy",
                                    style: TextStyle(
                                        color: Color(0xFF305F72),
                                        fontSize: 25,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  SizedBox(
                                    height: 3,
                                  ),
                                  Text(
                                    "Flutter Developer",
                                    style: TextStyle(
                                        color: Color(0xFFF18C8E), fontSize: 16),
                                  )
                                ],
                              ),
                              Spacer(),
                              Container(
                                height: 50,
                                width: 50,
                                decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    color: Color(0xFFFEF3F3)),
                                child: Center(
                                  child: Icon(
                                    Icons.arrow_forward,
                                    color: Color(0xFFF18C8E),
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),
                        ListView.builder(
                          // controller: scrollController,
                          padding: EdgeInsets.all(20),
                          scrollDirection: Axis.vertical,
                          shrinkWrap: true,
                          itemCount: 5,
                          itemBuilder: (context, index) => CouresContentCard(
                            color: details[index].color,
                            icon: details[index].icon,
                            course: details[index].course,
                            duration: details[index].duration,
                            finishing: details[index].finishing,
                            id: details[index].id,
                          ),
                        ),
                        InkWell(
                          onTap: () => Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => VideoScreen())),
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
                                    "Resume last lesson",
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
                  ),
                );
              })
        ],
      ),
    );
  }
}

class CouresContentCard extends StatelessWidget {
  final String course, duration, finishing, icon;
  final int id;
  final Color color;
  const CouresContentCard({
    Key key,
    this.course,
    this.duration,
    this.finishing,
    this.icon,
    this.id,
    this.color,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Column(
            children: [
              Container(
                height: 30,
                width: 30,
                decoration: BoxDecoration(
                    color: color, borderRadius: BorderRadius.circular(10)),
                child: Center(
                  child: Text(
                    id.toString(),
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 18,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                height: 5,
                width: 5,
                decoration: BoxDecoration(
                    color: color, borderRadius: BorderRadius.circular(20)),
              ),
              SizedBox(
                height: 5,
              ),
              Container(
                height: 5,
                width: 5,
                decoration: BoxDecoration(
                    color: color, borderRadius: BorderRadius.circular(20)),
              ),
              SizedBox(
                height: 5,
              ),
              Container(
                height: 5,
                width: 5,
                decoration: BoxDecoration(
                    color: color, borderRadius: BorderRadius.circular(20)),
              ),
            ],
          ),
          SizedBox(
            width: 20,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                course,
                style: TextStyle(
                    color: Color(0xFF305F72),
                    fontSize: 20,
                    fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 3,
              ),
              Text(
                duration,
                style: TextStyle(color: Color(0xFFF18C8E), fontSize: 16),
              )
            ],
          ),
          Spacer(),
          Column(
            children: [
              SizedBox(
                height: 10,
              ),
              Text(
                finishing,
                style: TextStyle(
                  fontSize: 20,
                  color: Color(0xFF305F72),
                ),
              ),
            ],
          ),
          SvgPicture.asset(
            icon,
            height: 50,
            width: 50,
          )
        ],
      ),
    );
  }
}

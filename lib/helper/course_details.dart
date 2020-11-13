import 'package:e_learning/model/category.dart';
import 'package:e_learning/model/course_details.dart';
import 'package:flutter/material.dart';

List<CourseDetailsModel> getDetails() {
  List<CourseDetailsModel> myDetails = List<CourseDetailsModel>();
  CourseDetailsModel coursedetailsmodel;

  //1
  coursedetailsmodel = new CourseDetailsModel();
  coursedetailsmodel.course = "Introduction";
  coursedetailsmodel.icon = "assets/icons/Play button orange 25.svg";
  coursedetailsmodel.color = Color(0xFFF18C8E);
  coursedetailsmodel.duration = "2 hours 20 minutes";
  coursedetailsmodel.finishing = "25%";
  coursedetailsmodel.id = 1;
  myDetails.add(coursedetailsmodel);

  //2
  coursedetailsmodel = new CourseDetailsModel();
  coursedetailsmodel.course = "Design Tools";
  coursedetailsmodel.icon = "assets/icons/Play button orange 25.svg";
  coursedetailsmodel.color = Color(0xFFD08CF1);
  coursedetailsmodel.duration = "1 hours 35 minutes";
  coursedetailsmodel.finishing = "25%";
  coursedetailsmodel.id = 2;
  myDetails.add(coursedetailsmodel);

  //3
  coursedetailsmodel = new CourseDetailsModel();
  coursedetailsmodel.course = "Prototyping Tools";
  coursedetailsmodel.icon = "assets/icons/Play button orange.svg";
  coursedetailsmodel.color = Color(0xFF8CC5F1);
  coursedetailsmodel.duration = "0 hours 57 minutes";
  coursedetailsmodel.finishing = "0%";
  coursedetailsmodel.id = 3;

  myDetails.add(coursedetailsmodel);

  //4
  coursedetailsmodel = new CourseDetailsModel();
  coursedetailsmodel.course = "Summary & Exercise";
  coursedetailsmodel.icon = "assets/icons/Play button orange.svg";
  coursedetailsmodel.color = Color(0xFF8CF1B1);
  coursedetailsmodel.duration = "3 hours 12 minutes";
  coursedetailsmodel.finishing = "0%";
  coursedetailsmodel.id = 4;

  myDetails.add(coursedetailsmodel);

  //5
  coursedetailsmodel = new CourseDetailsModel();
  coursedetailsmodel.course = "Coclusion";
  coursedetailsmodel.icon = "assets/icons/Play button orange.svg";
  coursedetailsmodel.color = Color(0xFFF1D98C);
  coursedetailsmodel.duration = "0 hours 30 minutes";
  coursedetailsmodel.finishing = "0%";
  coursedetailsmodel.id = 5;

  myDetails.add(coursedetailsmodel);

  return myDetails;
}

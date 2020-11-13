import 'package:e_learning/model/courses_model.dart';
import 'package:flutter/material.dart';

List<CoursesModel> getCourses() {
  List<CoursesModel> myCourses = List<CoursesModel>();
  CoursesModel courseModel;

  //1
  courseModel = new CoursesModel();
  courseModel.courseName = "Adobe XD";
  courseModel.imageUrl = "assets/icons/Adobe XD icon.svg";
  courseModel.isSelected = true;
  courseModel.color = Color(0xFFF3E7F0);
  courseModel.numCourses = 32;
  myCourses.add(courseModel);

  //2
  courseModel = new CoursesModel();
  courseModel.courseName = "Sketch";
  courseModel.imageUrl = "assets/icons/Sketch Icon.svg";
  courseModel.isSelected = true;
  courseModel.color = Color(0xFFFFF5E5);
  courseModel.numCourses = 99;
  myCourses.add(courseModel);

  //3
  courseModel = new CoursesModel();
  courseModel.courseName = "After Effects";
  courseModel.imageUrl = "assets/icons/After Effects Icon.svg";
  courseModel.isSelected = false;
  courseModel.color = Color(0xFFFBF5FF);
  courseModel.numCourses = 62;
  myCourses.add(courseModel);

  //4
  courseModel = new CoursesModel();
  courseModel.courseName = "Figma";
  courseModel.imageUrl = "assets/icons/Figma icon.svg";
  courseModel.isSelected = true;
  courseModel.color = Color(0xFFFFF1EF);
  courseModel.numCourses = 20;
  myCourses.add(courseModel);

  //5
  courseModel = new CoursesModel();
  courseModel.courseName = "Adobe Photoshop";
  courseModel.imageUrl = "assets/icons/Photoshop Icon.svg";
  courseModel.isSelected = false;
  courseModel.color = Color(0xFFEAF9FE);
  courseModel.numCourses = 122;
  myCourses.add(courseModel);
  return myCourses;
}

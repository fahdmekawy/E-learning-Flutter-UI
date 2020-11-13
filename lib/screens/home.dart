import 'package:e_learning/helper/data.dart';
import 'package:e_learning/model/category.dart';
import 'package:e_learning/widgets/header.dart';
import 'package:e_learning/widgets/progress.dart';
import 'package:flutter/material.dart';
import 'package:e_learning/size_config.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  List<CategoryModel> categories = new List<CategoryModel>();
  @override
  void initState() {
    super.initState();
    categories = getCategories();
  }

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            children: [
              Header(),
              SizedBox(
                height: getProportionateScreenHeight(100),
              ),
              Progess(
                categories: categories,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

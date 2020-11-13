import 'package:e_learning/size_config.dart';
import 'package:e_learning/widgets/category_body.dart';
import 'package:e_learning/widgets/progress_card.dart';
import 'package:flutter/material.dart';
import 'package:sliding_up_panel/sliding_up_panel.dart';
import 'package:e_learning/helper/data.dart';
import 'package:e_learning/model/category.dart';

class Category extends StatefulWidget {
  @override
  _CategoryState createState() => _CategoryState();
}

class _CategoryState extends State<Category> {
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
        body: SlidingUpPanel(
          maxHeight: getProportionateScreenWidth(400),
          minHeight: getProportionateScreenWidth(100),
          padding: EdgeInsets.only(top: 10),
          borderRadius: BorderRadius.only(
              topRight: Radius.circular(40), topLeft: Radius.circular(40)),
          panelBuilder: (scrollController) =>
              buildSlidingPabel(scrollController: scrollController),
          body: Category_body(),
        ),
      ),
    );
  }

  Widget buildSlidingPabel({@required ScrollController scrollController}) =>
      ListView.builder(
        controller: scrollController,
        padding: EdgeInsets.all(20),
        scrollDirection: Axis.vertical,
        shrinkWrap: true,
        itemCount: categories.length,
        itemBuilder: (context, index) => ProgressCard(
          image: categories[index].imageUrl,
          title: categories[index].categoryName,
          isActive: categories[index].isActive,
        ),
      );
}

import 'package:e_learning/constants.dart';
import 'package:e_learning/model/category.dart';
import 'package:e_learning/size_config.dart';
import 'package:e_learning/widgets/progress_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Progess extends StatelessWidget {
  final List<CategoryModel> categories;

  const Progess({Key key, @required this.categories}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Courses in progress",
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 23,
              color: kSecondaryColor,
            ),
          ),
          SizedBox(
            height: getProportionateScreenWidth(10),
          ),
          ListView.builder(
            scrollDirection: Axis.vertical,
            shrinkWrap: true,
            itemCount: categories.length,
            itemBuilder: (context, index) => ProgressCard(
              image: categories[index].imageUrl,
              title: categories[index].categoryName,
              isActive: categories[index].isActive,
            ),
          )
        ],
      ),
    );
  }
}

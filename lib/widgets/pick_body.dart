import 'package:e_learning/screens/choose_software.dart';
import 'package:e_learning/widgets/progress.dart';
import 'package:e_learning/widgets/progress_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class PickBody extends StatelessWidget {
  const PickBody({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          color: Color(0xFFF18C8E),
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
        ),
        Positioned(
          right: -100,
          top: -80,
          child: SvgPicture.asset("assets/icons/Path 18.svg"),
        ),
        Positioned(
          left: -180,
          top: 80,
          child: SvgPicture.asset("assets/icons/Path 22.svg"),
        ),
        Positioned(
          right: 80,
          top: 220,
          child: SvgPicture.asset("assets/icons/Path 23.svg"),
        ),
        Positioned(
          left: 100,
          top: 200,
          child: Text(
            "Pick\nyour plan",
            textAlign: TextAlign.center,
            style: TextStyle(
                fontSize: 50, color: Colors.white, fontWeight: FontWeight.bold),
          ),
        ),
        Positioned(
          right: 30,
          top: 60,
          child: Container(
            height: 60,
            width: 60,
            decoration: BoxDecoration(
              color: Colors.white.withOpacity(0.3),
              borderRadius: BorderRadius.circular(10),
            ),
            child: Center(
              child: Icon(
                Icons.menu,
                color: Colors.white,
                size: 30,
              ),
            ),
          ),
        ),
        Positioned(
          left: 30,
          top: 60,
          child: InkWell(
            onTap: () {
              Navigator.pop(context);
            },
            child: Container(
              height: 60,
              width: 60,
              decoration: BoxDecoration(
                color: Colors.white.withOpacity(0.3),
                borderRadius: BorderRadius.circular(10),
              ),
              child: Center(
                child: Icon(
                  Icons.arrow_back_outlined,
                  color: Colors.white,
                  size: 30,
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}

import 'package:e_learning/screens/choose_software.dart';
import 'package:e_learning/widgets/progress.dart';
import 'package:e_learning/widgets/progress_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CourseBody extends StatelessWidget {
  const CourseBody({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          color: Color(0xFF2E001F),
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
        ),
        Positioned(
          right: -100,
          top: -80,
          child: SvgPicture.asset("assets/icons/purple1.svg"),
        ),
        Positioned(
          left: -180,
          top: 80,
          child: SvgPicture.asset("assets/icons/purple 2.svg"),
        ),
        Positioned(
          right: 80,
          top: 220,
          child: SvgPicture.asset("assets/icons/purple 3.svg"),
        ),
        Positioned(
          left: 90,
          top: 150,
          child: Column(
            children: [
              SvgPicture.asset(
                "assets/icons/Adobe XD icon.svg",
                height: 60,
                width: 60,
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                "Adobe XD\nEssentials",
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontSize: 50,
                    color: Colors.white,
                    fontWeight: FontWeight.w500),
              ),
            ],
          ),
        ),
        Positioned(
          right: 30,
          top: 60,
          child: InkWell(
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => ChooseSoftware()));
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
                  Icons.menu,
                  color: Colors.white,
                  size: 30,
                ),
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

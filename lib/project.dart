import 'package:flutter/material.dart';
import 'package:myportfolio/utils/projectAnimationTween.dart';
import 'package:velocity_x/velocity_x.dart';

class Project extends StatefulWidget {
  const Project({super.key});

  @override
  State<Project> createState() => _ProjectState();
}

class _ProjectState extends State<Project> {
  List<Map<String, String>> skillImage = [
    {
      "portfolio":"assets/projectImage/portfolio.png",
      "goyo":"assets/projectImage/goyoshot.png",
      "portfolio2":"assets/projectImage/portfolio2.png",
    },

  ];
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(40),
        color: Colors.white,
      ),

      margin: EdgeInsets.only(top: 20, left: 10, right: 10, bottom: 10),
      width: context.screenWidth < 900
          ? context.screenWidth * .9
          : context.screenWidth < 1600
          ? context.screenWidth * .7
          : context.screenWidth * .2,
      child: Wrap(
        alignment: context.screenWidth < 900
            ? WrapAlignment.center
            : WrapAlignment.spaceAround,

        spacing: 20,
        runSpacing: 20,
        children: [
          Center(
            child: Padding(
              padding: const EdgeInsets.only(top: 10.0,bottom: 10),
              child: Text(
                "My Projects",
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.w600),
              ),
            ),
          ),
          ProjectAnimationTween(
            projectTitle: "Portfolio",
            projectDescription:
            "Its my portfolio website",
            state: "Completed",
            imagePath: "${skillImage[0]["portfolio"]}",
          ),
          ProjectAnimationTween(
            projectTitle: "Goyo",
            projectDescription:
            "Its a travelling app",
            state: "Currently in progress",
            imagePath: "${skillImage[0]["goyo"]}",
          ),
        ],
      ),
    );
  }
}

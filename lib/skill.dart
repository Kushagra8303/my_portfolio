import 'package:flutter/material.dart';
import 'package:myportfolio/utils/skillAnimationTween.dart';
import 'package:velocity_x/velocity_x.dart';

class Skill extends StatefulWidget {
  const Skill({super.key});

  @override
  State<Skill> createState() => _SkillState();
}

class _SkillState extends State<Skill> {
  List<Map<String, String>> skillImage = [
    {
      "flutter": "assets/skillImage/pngwing.png",
    "dart": "assets/skillImage/icons8-dart-480.png",
    "sqlite": "assets/skillImage/sqlite.png",
  "kotlin": "assets/skillImage/kotin.png",
 "java": "assets/skillImage/java.png",
      "firebase":"assets/skillImage/firebase.png"
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
            child: Text(
              "My Skills",
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.w600),
            ),
          ),
          Skillanimationtween(
            skillTitle: "Flutter",
            skillDescription:
                "Its a hybrid and cross plateform project development framework",
            imagePath: "${skillImage[0]["flutter"]}",
          ),
          Skillanimationtween(
            skillTitle: "Dart",
            skillDescription: "Intermediate",
            imagePath: "${skillImage[0]["dart"]}",
          ),
          Skillanimationtween(
            skillTitle: "Sqlite",
            skillDescription: "Beginner",
            imagePath: "${skillImage[0]["sqlite"]}",
          ),
          Skillanimationtween(
            skillTitle: "Kotlin",
            skillDescription: "Intermediate",
            imagePath: "${skillImage[0]["kotlin"]}",
          ),
          Skillanimationtween(
            skillTitle: "Java",
            skillDescription: "Intermediate",
            imagePath: "${skillImage[0]["java"]}",
          ),
          Skillanimationtween(
            skillTitle: "Firebase",
            skillDescription: "Beginner",
            imagePath: "${skillImage[0]["firebase"]}",
          ),
        ],
      ),
    );
  }
}

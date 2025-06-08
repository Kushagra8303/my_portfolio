import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:velocity_x/velocity_x.dart';
import 'utils/animationAbout.dart';

class About extends StatefulWidget {
  const About({super.key});

  @override
  State<About> createState() => _AboutState();
}

class _AboutState extends State<About> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(bottom: 10),
      height: 530,
      margin: EdgeInsets.only(top: 18),
      width: context.screenWidth < 900
          ? context.screenWidth * .9
          : context.screenWidth < 1600
          ? context.screenWidth * .3
          : context.screenWidth * .2,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Image.asset(
            "assets/images/10951137-removebg-preview.png",
            height: 156,
          ),

          Text(
            "Kush",
            style: TextStyle(fontSize: 30, fontWeight: FontWeight.w600),
          ),
          Text(
            "I am a devloper and I am looking for dev roles across India or USA",
            textAlign: TextAlign.center,
          ),
          SizedBox(height: 5),
          Wrap(
            alignment: WrapAlignment.center,
            spacing: 8.0,
            runSpacing: 8.0,
            children: [
              const Chip(
                labelStyle: TextStyle(color: Colors.white),
                label: Text("Full Stack Devloper"),
                backgroundColor: Colors.green,
                padding: EdgeInsets.all(8.0),
              ),
              const Chip(
                labelStyle: TextStyle(color: Colors.white),
                label: Text("App Devloper"),
                backgroundColor: Colors.green,
                padding: EdgeInsets.all(8.0),
              ),
            ],
          ),
          Divider(),

          AnimationAbout(
            hlink: "https://www.linkedin.com/in/kushagra-srivastava-731989259",
            iconData: FontAwesomeIcons.linkedin,
            title: "Linkedin",
            description: "description",
            onTap: () {},
          ),
          AnimationAbout(
            hlink: "https://github.com/Kushagra8303",
            iconData: FontAwesomeIcons.githubAlt,
            title: "Github",
            description: "description",
            onTap: () {},
          ),
        ],
      ),
    );
  }
}

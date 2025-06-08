import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

import '../colors.dart';

class ProjectAnimationTween extends StatefulWidget {
  final String projectTitle;
  final String projectDescription;
  final String state;
  final String imagePath;
  const ProjectAnimationTween({
    super.key,
    required this.projectTitle,
    required this.projectDescription,
    required this.imagePath,
    required this.state
  });

  @override
  State<ProjectAnimationTween> createState() => _ProjectAnimationTweenState();
}

late Animation animation;
late AnimationController controller;

class _ProjectAnimationTweenState extends State<ProjectAnimationTween>
    with SingleTickerProviderStateMixin {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    controller = AnimationController(
      vsync: this,
      duration: Duration(milliseconds: 800),
    );
    animation = Tween(
      begin: 0.0,
      end: 210.0,
    ).animate(CurvedAnimation(parent: controller, curve: Curves.easeInOut));

    controller.addListener(() {
      setState(() {});
    });
  }

  hover() {
    var h;
    if (animation.value > 120) {
      h = 120;
      setState(() {});
      return h;
    }
  }

  bool isHovering = false;
  @override
  Widget build(BuildContext context) {
    return Container(
      child: InkWell(
        onTap: () {},
        onHover: (val) {
          setState(() {
            isHovering = val;
            if (isHovering) {
              controller.forward(); // Start animation when hovering
            } else {
              controller.reverse(); // Reverse animation when hover removed
            }
          });
        },
        child: Card(
          margin: EdgeInsets.all(20),
          elevation: 8,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(30),
          ),
          shadowColor: Colors.green.shade100,
          child: Column(
            children: [
              Column(
                children: [
                  Stack(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Container(
                          height: context.screenWidth < 900 ? 120 : 200,
                          width: context.screenWidth < 900 ? 150 : 150,

                          decoration: BoxDecoration(
                            image: DecorationImage(
                              fit: BoxFit.cover,
                              image: AssetImage(widget.imagePath),
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(1.0),
                        child: Container(
                          height: isHovering
                              ? context.screenWidth < 900
                                    ? hover()
                                    : animation.value
                              : 0,
                          width: context.screenWidth < 900 ? 150 : 170,

                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(30),
                            color: Colors.purple.withOpacity(.5),
                          ),
                          child: animation.value > 160
                              ? Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Text(
                                      widget.projectTitle,
                                      style: TextStyle(
                                        color: Colors.yellowAccent,
                                        fontWeight: FontWeight.w900,
                                        fontSize: 22,
                                      ),
                                    ),
                                    SizedBox(height: 10),
                                    Wrap(
                                      alignment: WrapAlignment.center,
                                      children: [
                                        Padding(
                                          padding: const EdgeInsets.only(
                                            left: 18.0,
                                          ),
                                          child: Text(
                                            widget.projectDescription,
                                            style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 14,
                                              fontWeight: FontWeight.bold,
                                            ),
                                          ),
                                        ),
                                        SizedBox(height: 30),
                                        Text("Status",style: TextStyle(color: Colors.lightGreen.shade100,fontSize: 18,fontWeight: FontWeight.bold),),
                                        Text(
                                          widget.state,
                                          style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 14,),),
                                      ],
                                    ),
                                  ],
                                )
                              : null,
                        ),
                      ),
                    ],
                  ),
                  Chip(
                    padding: EdgeInsets.all(3),
                    backgroundColor: Colors.green,
                    label: Text(
                      widget.projectTitle,
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

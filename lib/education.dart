import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';
import 'package:timelines/timelines.dart';

class Education extends StatefulWidget {
  const Education({super.key});

  @override
  State<Education> createState() => _EducationState();
}

class _EducationState extends State<Education> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 14.0),
      child: Container(
        height: context.screenWidth < 350
            ? 800
            : context.screenWidth < 450
            ? 580
            : context.screenWidth < 700
            ? 650
            : 530,
        margin: EdgeInsets.only(top: 20),
        width: context.screenWidth < 900
            ? context.screenWidth * .9
            : context.screenWidth < 1600
            ? context.screenWidth * .5
            : context.screenWidth * .4,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(20),
        ),
        child: Padding(
          padding: const EdgeInsets.all(12),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Education",
                style: TextStyle(fontSize: 22, fontWeight: FontWeight.w600),
              ),
              Timeline.tileBuilder(
                shrinkWrap: true,
                scrollDirection: Axis.vertical,
                builder: TimelineTileBuilder.fromStyle(
                  itemCount: 3,
                  contentsAlign: ContentsAlign.alternating,
                  contentsBuilder: (context, index) {
                    List<Map<String, String>> educationDetails = [
                      {
                        "degree": "B.Tech",
                        "field": "AKTU",
                        "stream": "Information Technology",
                        "institution":
                            "SR Institute of Management and Technology, Lucknow",
                        "duration": "2022 - 2026 (Expected)",
                      },
                      {
                        "degree": "Class 12th",
                        "field": "UP Board",
                        "stream": "PCM",
                        "institution": "SSSV Inter College, Ayodhya",
                        "duration": "2022",
                      },
                      {
                        "degree": "Class 10th",
                        "field": "UP Board",
                        "stream": "Science",
                        "institution": "SSSV Inter College, Ayodhya",
                        "duration": "2020 ",
                      },
                    ];

                    return Container(
                      alignment: Alignment.center,
                      child: Card(
                        child: Padding(
                          padding: const EdgeInsets.all(8),
                          child: RichText(
                            text: TextSpan(
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: context.screenWidth < 900 ? 14 : 16,
                              ),
                              children: [
                                TextSpan(
                                  text:
                                      '${educationDetails[index]["degree"]} : ',
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: context.screenWidth < 900
                                        ? 16
                                        : 18,
                                  ),
                                ),
                                TextSpan(
                                  text: '${educationDetails[index]["field"]}\n',
                                  style: TextStyle(
                                    fontWeight: FontWeight.w600,
                                    fontSize: context.screenWidth < 900
                                        ? 16
                                        : 18,
                                    color: Colors.blue,
                                  ),
                                ),
                                TextSpan(
                                  text: 'Stream :- ',
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: context.screenWidth < 900
                                        ? 14
                                        : 16,
                                  ),
                                ),
                                TextSpan(
                                  text:
                                      '${educationDetails[index]["stream"]}\n',
                                  style: TextStyle(
                                    fontWeight: FontWeight.w600,
                                    fontSize: context.screenWidth < 900
                                        ? 16
                                        : 18,
                                    color: Colors.blue,
                                  ),
                                ),
                                TextSpan(
                                  text: 'Institution :- ',
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: context.screenWidth < 900
                                        ? 14
                                        : 16,
                                  ),
                                ),

                                TextSpan(
                                  text:
                                      '${educationDetails[index]["institution"]}\n',
                                  style: TextStyle(fontStyle: FontStyle.italic),
                                ),
                                TextSpan(
                                  text:
                                      '${educationDetails[index]["duration"]}\n',
                                  style: TextStyle(color: Colors.green),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:url_launcher/url_launcher.dart';

class AnimationAbout extends StatefulWidget {
  final IconData iconData;
  final String title;
  final String description;
  final VoidCallback onTap;
  final String hlink;

  const AnimationAbout({
    Key? key,
    required this.hlink,
    required this.iconData,
    required this.title,
    required this.description,
    required this.onTap,
  }) : super(key: key);

  @override
  State<AnimationAbout> createState() => _AnimationAboutState();
}

class _AnimationAboutState extends State<AnimationAbout> {
  bool isHovering = false;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      onHover: (val) {
        setState(() {
          isHovering = val;
        });
      },

      child: InkWell(
        onTap: (){
          launchUrl(
            Uri.parse(widget.hlink!),
            mode: LaunchMode.inAppBrowserView
          );
        },
        child: AnimatedContainer(
          duration: Duration(milliseconds: 300),
          decoration: BoxDecoration(
            color: isHovering ? Colors.grey.shade300 : Colors.white,
            border: Border.all(color: isHovering ? Colors.grey : Colors.white),
            borderRadius: BorderRadius.circular(12),
          ),
          margin: EdgeInsets.only(top: 7),
          padding: EdgeInsets.all(6),
          child: Row(
            children: [
              Card(
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: FaIcon(widget.iconData, size: 18),
                ),
              ),
              SizedBox(width: 12),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    widget.title,
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
                  ),
                  Text(widget.description),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

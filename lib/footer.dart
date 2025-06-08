import 'package:flutter/material.dart';
import 'package:myportfolio/utils/socialrow.dart';

class Footer extends StatefulWidget {
  const Footer({super.key});

  @override
  State<Footer> createState() => _FooterState();
}

class _FooterState extends State<Footer> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      padding: EdgeInsets.all(20),
      margin: EdgeInsets.only(top: 15),

      child: Column(
        children: [
          SocialRow(),
        ],
      ),
    );
  }
}

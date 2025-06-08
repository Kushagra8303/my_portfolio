import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class SocialRow extends StatefulWidget {
  const SocialRow({super.key});

  @override
  State<SocialRow> createState() => _SocialRowState();
}

class _SocialRowState extends State<SocialRow> {
  @override
  Widget build(BuildContext context) {
    return Row(

      children: [
        Row(

          children: [
            SizedBox(
              width: 40,
              child: FaIcon(FontAwesomeIcons.instagram, size: 20),
            ),
            SizedBox(width: 40, child: FaIcon(FontAwesomeIcons.facebook, size: 20)),
            SizedBox(width: 40, child: FaIcon(FontAwesomeIcons.xTwitter, size: 20)),

          ],
        ),
        Spacer(),
        Row(


          children: [
            Text(
              "Thank You",
              style: TextStyle(
                fontStyle: FontStyle.italic,
                fontWeight: FontWeight.bold,
                fontSize: 20,
              ),
            ),
          ],
        )
      ],
    );
  }
}

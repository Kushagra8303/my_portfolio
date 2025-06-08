import 'package:flutter/material.dart';
import 'package:myportfolio/about.dart';
import 'package:myportfolio/contact.dart';
import 'package:myportfolio/education.dart';
import 'package:myportfolio/footer.dart';
import 'package:myportfolio/project.dart';
import 'package:myportfolio/skill.dart';
import 'colors.dart';
import 'package:velocity_x/velocity_x.dart';

class Home extends StatefulWidget {
  Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final ScrollController _scrollController = ScrollController();

  List<Widget> navItems = [];
  final skillskey = GlobalKey();
  final aboutkey = GlobalKey();
  final projectkey = GlobalKey();
  final contactkey = GlobalKey();
  final educationkey = GlobalKey();

  bool isMobile = false;
  @override
  void initState() {
    navItems = [
      Padding(
        padding: const EdgeInsets.only(right: 8.0, left: 8),
        child: TextButton(
          onPressed: () {
            Scrollable.ensureVisible(aboutkey.currentContext!);
          },
          child: Text(
            "About",
            style: TextStyle(
              fontWeight: FontWeight.bold,
              color: textColor,
              fontSize: 18,
            ),
          ),
        ),
      ),
      Padding(
        padding: const EdgeInsets.only(right: 8.0, left: 8),
        child: TextButton(
          onPressed: () {
            Scrollable.ensureVisible(educationkey.currentContext!);
          },
          child: Text(
            "Education",
            style: TextStyle(
              fontWeight: FontWeight.bold,
              color: textColor,
              fontSize: 18,
            ),
          ),
        ),
      ),
      Padding(
        padding: const EdgeInsets.only(right: 8.0, left: 8),
        child: TextButton(
          onPressed: () {
            Scrollable.ensureVisible(skillskey.currentContext!);
          },
          child: Text(
            "Skill",
            style: TextStyle(
              fontWeight: FontWeight.bold,
              color: textColor,
              fontSize: 18,
            ),
          ),
        ),
      ),
      Padding(
        padding: const EdgeInsets.only(right: 8.0, left: 8),
        child: TextButton(
          onPressed: () {
            Scrollable.ensureVisible(projectkey.currentContext!);
          },
          child: Text(
            "Project",
            style: TextStyle(
              fontWeight: FontWeight.bold,
              color: textColor,
              fontSize: 18,
            ),
          ),
        ),
      ),
      Padding(
        padding: const EdgeInsets.only(right: 14.0, left: 8),
        child: TextButton(
          onPressed: () {
            Scrollable.ensureVisible(contactkey.currentContext!);
          },
          child: Text(
            "Contact",
            style: TextStyle(
              fontWeight: FontWeight.bold,
              color: textColor,
              fontSize: 18,
            ),
          ),
        ),
      ),
    ];
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    isMobile = MediaQuery.of(context).size.width > 700 ? false : true;

    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.purple.shade50,
        appBar: AppBar(
          title: Text(
            "Kushagra Srivastava",
            style: TextStyle(
              fontSize: context.screenWidth < 900 ? 22 : 26,
              fontWeight: FontWeight.w900,
              color: textColor,
            ),
          ),
          centerTitle: false,
          elevation: 3,
          toolbarHeight: 70,
          actions: isMobile ? null : navItems,
        ),
        drawer: isMobile ? Drawer(child: ListView(children: navItems)) : null,
      
        body: SingleChildScrollView(
          child: Center(
            child: Column(
              children: [
                Wrap(
                  alignment: WrapAlignment.center,
                  children: [
                    About(key: aboutkey),
                    Education(key: educationkey),
                    Skill(key: skillskey),
                    Project(key: projectkey,),
                    Contact(key: contactkey,),
                  ],
                ),
                Footer(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../footer.dart';
import '../header.dart';
import '../widgets/mobileheader.dart';

import 'Aboutus-elements/about-banner.dart';
import 'Aboutus-elements/team-member.dart';
import 'Aboutus-elements/whatwedo.dart';
import 'Aboutus-elements/whyus.dart';


class AboutPage extends StatefulWidget {
  AboutPage({
    Key? key,
  }) : super(key: key);

  @override
  _AboutPageState createState() => _AboutPageState();
}

class _AboutPageState extends State<AboutPage> {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      endDrawer: MobileDrawer(),
      body:  SingleChildScrollView(
        child: Column(
          children: [
            Header(),
            AboutBanner(),
            WhatwedoSection(),
            WhyusSection(),
            TeamSection(),
            FooterSection()
          ],
        ),
      ),
    );
  }
}


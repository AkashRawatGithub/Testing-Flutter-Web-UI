import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:newjeevantikacustomerswebsite/Pages/pricing-elements/pricing-banner.dart';
import 'package:newjeevantikacustomerswebsite/Pages/pricing-elements/pricing-cards.dart';
import '../footer.dart';
import '../header.dart';
import '../widgets/constants.dart';
import '../widgets/mobileheader.dart';

import 'Aboutus-elements/about-banner.dart';
import 'homepage-elements/registersection.dart';



class PricingPage extends StatefulWidget {
  PricingPage({
    Key? key,
  }) : super(key: key);

  @override
  _PricingPageState createState() => _PricingPageState();
}

class _PricingPageState extends State<PricingPage> {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      endDrawer: MobileDrawer(),
      body:  SingleChildScrollView(
        child: Column(
          children: [
            Header(),
            PricingBanner(),
            Stack(
              children: [
                Positioned(
                  right: -350,
                  bottom: 120,
                  child: Container(
                    height: 785,
                    width: 785,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      gradient: RadialGradient(
                        colors: [PricingiconBG, PricingiconBG,Colors.white],
                        center: Alignment.center,
                        radius: 0.9,
                        stops: [-1.0, -0.1,0.5],
                      ),
                    ),
                  ),
                ),
                Column(
                  children: [
                    PricingcardSection(),
                    RegisterSection(),
                  ],
                ),
              ],
            ),

            FooterSection()
          ],
        ),
      ),
    );
  }
}


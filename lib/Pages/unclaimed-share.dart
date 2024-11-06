import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:newjeevantikacustomerswebsite/Pages/unclaimed-share-elements/advisory.dart';
import 'package:newjeevantikacustomerswebsite/Pages/unclaimed-share-elements/attribute.dart';
import 'package:newjeevantikacustomerswebsite/Pages/unclaimed-share-elements/features.dart';
import 'package:newjeevantikacustomerswebsite/Pages/unclaimed-share-elements/sanjeevani.dart';
import 'package:newjeevantikacustomerswebsite/Pages/unclaimed-share-elements/unclaimed-banner.dart';
import '../footer.dart';
import '../header.dart';
import '../widgets/mobileheader.dart';


class UnclaimedsharePage extends StatefulWidget {
  UnclaimedsharePage({
    Key? key,
  }) : super(key: key);

  @override
  _UnclaimedsharePageState createState() => _UnclaimedsharePageState();
}

class _UnclaimedsharePageState extends State<UnclaimedsharePage> {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      endDrawer: MobileDrawer(),
      body:  SingleChildScrollView(
        child: Column(
          children: [
            Header(),
            UnclaimedshareBanner(),
            AdvisorySection(),
            AttributesSection(),
            SanjeevaniSection(),
            FeaturesSection(),
            FooterSection()
          ],
        ),
      ),
    );
  }
}


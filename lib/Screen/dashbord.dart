import 'package:flutter/material.dart';
import 'package:newjeevantikacustomerswebsite/Screen/search_investor.dart';

import '../widgets/constants.dart';
import 'dashboard-header.dart';
import 'dashboard-navbar.dart';

class DashboardPage extends StatefulWidget {
  const DashboardPage({Key? key}) : super(key: key);

  @override
  State<DashboardPage> createState() => _DashboardPageState();
}


class _DashboardPageState extends State<DashboardPage> {



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body:  SizedBox(
        height: MediaQuery.of(context).size.height,
        child: Stack(
          children: [
            Positioned(
              left: -628,
              top: -78,
              child: Container(
                height: 1456,
                width: 1456,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  gradient: RadialGradient(
                    colors: [SearchInv.withOpacity(.2),Colors.white],
                    center: Alignment.center,
                    radius: .6,
                    stops: [-1.0,0.5],
                  ),
                ),
              ),
            ),
            SingleChildScrollView(
              child: SizedBox(

                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    HeaderDashboard(),
                    SizedBox(height: 50,),
                    Navbar(),
                    SearchInvestor()

                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }




}

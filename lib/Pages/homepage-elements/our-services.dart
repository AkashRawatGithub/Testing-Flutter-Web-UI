import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:responsive_framework/responsive_framework.dart';

import '../../Values/values.dart';
import '../../widgets/cards.dart';
import '../../widgets/constants.dart';
import '../../widgets/getimage.dart';
import '../../widgets/screen_helper.dart';

class OurServices extends StatefulWidget {
  const OurServices({Key? key}) : super(key: key);

  @override
  State<OurServices> createState() => _OurServicesState();
}

class _OurServicesState extends State<OurServices> {
  var serviceView;
  var serviceView2;
  @override
  void initState() {
    super.initState();
    fetchImageUrlAndRegisterView(context,setState,StringConst.img1,'serviceimg1','100%','100%','contain','','');
    fetchImageUrlAndRegisterView(context,setState,StringConst.img2,'serviceimg2','100%','100%','contain','','');
    serviceView= HtmlElementView(
      key: UniqueKey(), // Force rebuild when imageUrl changes
      viewType: 'serviceimg1',
    );
    serviceView2= HtmlElementView(
      key: UniqueKey(), // Force rebuild when imageUrl changes
      viewType: 'serviceimg2',
    );
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: ScreenHelper(
        desktop: _buildUi(
            context, kDesktopMaxWidth, maincolor),
        tablet: _buildUi(
            context, kTabletMaxWidth, maincolor),
        mobile: _buildUi(
            context,
            getMobileMaxWidth(context),
            maincolor),
      ),
    );
  }
  int _currentIndex=0;
  Widget _buildUi(BuildContext context, double width, Color maincolor) {

    final List<Widget> cardList = [
      ourServicesCards(width,StringConst.CARDTITLE,StringConst.CARDDESC,serviceView2),
      ourServicesCards(width,StringConst.CARDTITLE,StringConst.CARDDESC,serviceView),
      ourServicesCards(width,StringConst.CARDTITLE,StringConst.CARDDESC,serviceView2),


    ];

    return ResponsiveWrapper(
      maxWidth: width,
      minWidth: width,
      child: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: width < 500
              ? 20
              : width > 800
              ? 20
              : width > 1200
              ? 100.0
              : 100,
        ),
        child: Column(
          children: [
            Text(
          StringConst.OURSERVICE,
              textAlign: TextAlign.center,
              style: GoogleFonts.lato(
                color: textcolor,
                fontWeight: FontWeight.w600,
                fontSize: 40,
                height: 2,
              ),
            ),
            SizedBox(height: 5),
            SizedBox(
              width: width / 1.8,
              child: Text(
                StringConst.OURSERVICEDESC,
                textAlign: TextAlign.center,
                style: GoogleFonts.lato(
                  color: desccolor,
                  fontWeight: FontWeight.w400,
                  fontSize: 16,
                ),
              ),
            ),
            SizedBox(height: 30),
            CarouselSlider(
              items: cardList,
              options: CarouselOptions(
                height: 485,
                viewportFraction: width > 720 ? 0.33 : 1,
                autoPlay: true,
                reverse: true,
                disableCenter: true,
                enlargeCenterPage: false,
                autoPlayInterval: Duration(seconds: 3),
                aspectRatio: width > 720 ? 14 / 3.4 : 2 / 2,
                onPageChanged: (index, reason) {
                  setState(() {
                    _currentIndex = index;
                  });
                },
              ),
            ),
            SizedBox(height: 50),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: cardList.asMap().entries.map((entry) {
                return MouseRegion(
                  cursor: MaterialStateMouseCursor.clickable,
                  child: GestureDetector(
                    onTap: () {
                      setState(() {
                        _currentIndex = entry.key;

                      });
                    },
                    child: Container(
                      width: 34.0,
                      height: _currentIndex == entry.key ?13:9.0,
                      margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 4.0),
                      decoration: BoxDecoration(
                        border: Border.all(color: _currentIndex == entry.key ?Colors.grey .withOpacity(0.5):Colors.black),
                        borderRadius: BorderRadius.circular(8),
                        color: (Theme.of(context).brightness == Brightness.dark
                            ? Colors.white
                            : Colors.black)
                            .withOpacity(_currentIndex == entry.key ? 0.5 : 0.0),
                      ),
                    ),
                  ),
                );
              }).toList(),
            ),
          ],
        ),
      ),
    );
  }
}

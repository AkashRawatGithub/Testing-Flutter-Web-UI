import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:responsive_framework/responsive_wrapper.dart';

import '../../Values/values.dart';
import '../../widgets/cards.dart';
import '../../widgets/constants.dart';
import '../../widgets/custom-buttons.dart';
import '../../widgets/getimage.dart';
import '../../widgets/screen_helper.dart';

class TestimonialSection extends StatefulWidget {
  const TestimonialSection({Key? key}) : super(key: key);

  @override
  State<TestimonialSection> createState() => _TestimonialSectionState();
}

class _TestimonialSectionState extends State<TestimonialSection> {

  var viewTestimonial;
  @override
  void initState() {
    super.initState();

    fetchImageUrlAndRegisterView(context,setState,StringConst.TESTIMONIALPERSON1,'testimonialUrl','100%','100%','','hidden','50%');
    viewTestimonial= ClipOval(
      child: HtmlElementView(
        key: UniqueKey(), // Force rebuild when imageUrl changes
        viewType: 'testimonialUrl',
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          color: searchshareBackground,
          child: Center(
            child: SizedBox(
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
            ),
          ),
        ),
        Positioned(
            right: 0,
            top: 60,
            child: Image.asset(StringConst.TESTIMONIALBG)),
        Positioned(
            left: 0,
            top: 60,
            child: Image.asset(StringConst.TESTIMONIALBGARROW)),
        Positioned(
            left: 0,
            bottom: 60,
            child: Image.asset(StringConst.TESTIMONIALBGSMALL)),
      ],
    );
  }
  int _currentIndex=0;

  final CarouselController _controller = CarouselController();
  Widget _buildUi(BuildContext context, double width, Color maincolor){

    final List<Widget> cardList = [
      testimonialCards(width,StringConst.TESTIMONIALNAME,StringConst.TESTIMONIALOCCUPATION,StringConst.TESTIMONIALMSG,viewTestimonial),
      testimonialCards(width,StringConst.TESTIMONIALNAME,StringConst.TESTIMONIALOCCUPATION,StringConst.TESTIMONIALMSG,viewTestimonial),
      testimonialCards(width,StringConst.TESTIMONIALNAME,StringConst.TESTIMONIALOCCUPATION,StringConst.TESTIMONIALMSG,viewTestimonial),
    ];
    return ResponsiveWrapper(
        maxWidth: width,
        minWidth: width,
        child:Padding(
          padding: const EdgeInsets.symmetric(horizontal: 50.0),
          child: Column(
            // crossAxisAlignment: CrossAxisAlignment.center,
            // mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(height: 50,),
              Text(
                StringConst.TESTIMONIALTITLE,
                textAlign: TextAlign.center,
                style: GoogleFonts.lato(
                  color: textcolor,
                  fontWeight: FontWeight.w600,
                  fontSize: 40,
                  height: 2,
                ),
              ),
              SizedBox(height: 10),
              SizedBox(
                width: width/1.8,
                child: Text(
                  StringConst.TESTIMONIALDESC,
                  textAlign: TextAlign.center,
                  style: GoogleFonts.lato(
                    color: desccolor,
                    fontWeight: FontWeight.w400,
                    fontSize: 16,
                  ),
                ),
              ),
              SizedBox(height: 50),
              Stack(
                children: [
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 60),
                    child: CarouselSlider(
                      items: cardList,
                      carouselController: _controller,
                      options: CarouselOptions(
                        height: 450,
                        viewportFraction: 1,
                        autoPlay: false,
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
                  ),
                  Positioned(
                    left: 0,
                    top: 0,
                    bottom: 0,
                    child: Container(
                      height: 56,
                      width: 56,
                      decoration: BoxDecoration(
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.2),
                            spreadRadius: 2,
                            blurRadius: 4,
                            offset: Offset(0, 2), // changes position of shadow
                          ),
                        ],
                        color: Colors.white,
                        shape: BoxShape.circle,
                      ),
                      child: Center(
                        child: IconButton(
                          onPressed: (){
                            setState(() {
                              _controller.previousPage();
                            });
                            print("Previous button pressed");
                          },
                          icon: Icon(Icons.arrow_back_ios_new, size: 20),
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    right: 0,
                    top: 0,
                    bottom: 0,
                    child: Container(
                      height: 56,
                      width: 56,
                      decoration: BoxDecoration(
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.2),
                            spreadRadius: 2,
                            blurRadius: 4,
                            offset: Offset(0, 2), // changes position of shadow
                          ),
                        ],
                        color: Colors.white,
                        shape: BoxShape.circle,
                      ),
                      child: Center(
                        child: IconButton(
                          onPressed: () {
                            _controller.nextPage();

                          },
                          icon: Icon(Icons.arrow_forward_ios, size: 20),
                        ),
                      ),
                    ),
                  ),
                ],
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
              SizedBox(height: 50),
            ],
          ),
        )
    );
  }
}

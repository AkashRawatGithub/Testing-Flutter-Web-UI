import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:responsive_framework/responsive_wrapper.dart';

import '../../Values/values.dart';
import '../../widgets/cards.dart';
import '../../widgets/constants.dart';
import '../../widgets/getimage.dart';
import '../../widgets/screen_helper.dart';

class TeamSection extends StatefulWidget {
  const TeamSection({Key? key}) : super(key: key);

  @override
  State<TeamSection> createState() => _TeamSectionState();
}

class _TeamSectionState extends State<TeamSection> {
  var viewTeamimg;
  int _currentIndex=0;
  @override
  void initState() {
    super.initState();
    fetchImageUrlAndRegisterViewforTeam(context,setState,StringConst.TEAMGIRLIMG,'teamUrl','auto','auto','','','');
    viewTeamimg = HtmlElementView(
      key: UniqueKey(), // Force rebuild when imageUrl changes
      viewType: 'teamUrl',
    );
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Positioned(bottom:50,child: Image.asset(StringConst.ATTRIBUTEBG2,fit: BoxFit.contain)),
        Center(
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
      ],
    );
  }


  final CarouselController _controller = CarouselController();
  Widget _buildUi(BuildContext context, double width, Color maincolor){

    final List<Widget> cardList = [
     TeamMemberCards(width,StringConst.TEAMNAMECARD,StringConst.TEAMOCCUPATION, StringConst.TEAMDESCCARD, viewTeamimg),
      TeamMemberCards(width,StringConst.TEAMNAMECARD,StringConst.TEAMOCCUPATION, StringConst.TEAMDESCCARD, viewTeamimg),
      TeamMemberCards(width,StringConst.TEAMNAMECARD,StringConst.TEAMOCCUPATION, StringConst.TEAMDESCCARD, viewTeamimg),
      TeamMemberCards(width,StringConst.TEAMNAMECARD,StringConst.TEAMOCCUPATION, StringConst.TEAMDESCCARD, viewTeamimg),
    ];

    return ResponsiveWrapper(
        maxWidth: width,
        minWidth: width,
        child:Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(height: 100,),
            Text(
              StringConst.TEAMMEMBER,
              textAlign: TextAlign.center,
              style: GoogleFonts.lato(
                color: textcolor,
                fontWeight: FontWeight.w600,
                fontSize: 40,

              ),
            ),
            SizedBox(height: 5,),
            SizedBox(
              width: width/1.8,
              child: Text(
                StringConst.TEAMMEMberDESC,
                textAlign: TextAlign.center,
                style: GoogleFonts.roboto(
                  color: desccolor,
                  fontWeight: FontWeight.w400,
                  fontSize: 16,
                  height: 1.5

                ),
              ),
            ),
            SizedBox(height: 80,),
            Stack(
              children: [
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 150),
                  child: CarouselSlider(
                    items: cardList,
                    carouselController: _controller,
                    options: CarouselOptions(
                      height: 450,
                      viewportFraction: width > 720 ? 0.33 : 1,
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
                  child:Container(
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
                        shape: BoxShape.circle
                    ),
                    child: Center(
                      child: IconButton(onPressed: () => _controller.previousPage(),
                        icon: Icon(Icons.arrow_back_ios_new,size: 20,),
                      ),
                    ),
                  ),),
                Positioned(
                    right: 0,
                    top: 0,
                    bottom: 0,
                    child:  Container(
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
                          shape: BoxShape.circle
                      ),
                      child: Center(
                        child: IconButton(onPressed: () => _controller.nextPage(),
                          icon: Icon(Icons.arrow_forward_ios,size: 20,),
                        ),
                      ),
                    )
                ),
              ],
            ),
            SizedBox(height: 100,)
          ],
        )
    );
  }
}

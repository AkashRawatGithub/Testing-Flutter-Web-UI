import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:responsive_framework/responsive_wrapper.dart';

import '../../Values/values.dart';
import '../../widgets/constants.dart';
import '../../widgets/custom-buttons.dart';
import '../../widgets/getimage.dart';
import '../../widgets/screen_helper.dart';

class AboutSection extends StatefulWidget {
  const AboutSection({Key? key}) : super(key: key);

  @override
  State<AboutSection> createState() => _AboutSectionState();
}

class _AboutSectionState extends State<AboutSection> {

  var viewAbout;
  var project;
  var clientreview;
  var members;
  var employee;
  @override
  void initState() {
    super.initState();

    viewAbout = '${StringConst.BASEHREF}'+StringConst.ABOUTBGIMG;
    project = '${StringConst.BASEHREF}'+StringConst.ABOUTBGIMG1;
    clientreview = '${StringConst.BASEHREF}'+StringConst.ABOUTBGIMG2;
    members = '${StringConst.BASEHREF}'+StringConst.ABOUTBGIMG3;
    employee = '${StringConst.BASEHREF}'+StringConst.ABOUTBGIMG4;
    /*HtmlElementView(
      key: UniqueKey(), // Force rebuild when imageUrl changes
      viewType: 'shareUrl',
    );*/
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 317,

      decoration: BoxDecoration(
        color: aboutBG,
        image: DecorationImage(
          image: NetworkImage(viewAbout),
          fit: BoxFit.cover,
        ),
      ),
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
    );
  }

  Widget _buildUi(BuildContext context, double width, Color maincolor){
    return ResponsiveWrapper(
        maxWidth: width,
        minWidth: width,
        child:Padding(
          padding: const EdgeInsets.symmetric(horizontal: 50.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [

              Column(
                children: [
                  Container(
                    height: 75,
                    width: 75,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      shape: BoxShape.circle,

                        image: DecorationImage(
                          image: NetworkImage(project),
                          fit: BoxFit.none,

                      ),
                    ),
                  ),
                  SizedBox(height: 10,),
                  Text(
                    StringConst.ABOUTBGNO1,
                    textAlign: TextAlign.center,
                    style: GoogleFonts.lato(
                      color: Colors.white,
                      fontWeight: FontWeight.w600,
                      fontSize: 42,
                    ),
                  ),
                  Text(
                    StringConst.ABOUTBGNAME1,
                    textAlign: TextAlign.center,
                    style: GoogleFonts.lato(
                      color: Colors.white,
                      fontWeight: FontWeight.w500,
                      fontSize: 24,
                    ),
                  ),
                ],
              ),

              Column(
                children: [
                  Container(
                    height: 75,
                    width: 75,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      shape: BoxShape.circle,

                      image: DecorationImage(
                        image: NetworkImage(clientreview),
                        fit: BoxFit.none,

                      ),
                    ),
                  ),
                  SizedBox(height: 10,),
                  Text(
                    StringConst.ABOUTBGNO2,
                    textAlign: TextAlign.center,
                    style: GoogleFonts.lato(
                      color: Colors.white,
                      fontWeight: FontWeight.w600,
                      fontSize: 42,
                    ),
                  ),
                  Text(
                    StringConst.ABOUTBGNAME2,
                    textAlign: TextAlign.center,
                    style: GoogleFonts.lato(
                      color: Colors.white,
                      fontWeight: FontWeight.w500,
                      fontSize: 24,
                    ),
                  ),
                ],
              ),

              Column(
                children: [
                  Container(
                    height: 75,
                    width: 75,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      shape: BoxShape.circle,

                      image: DecorationImage(
                        image: NetworkImage(members),
                        fit: BoxFit.none,

                      ),
                    ),
                  ),
                  SizedBox(height: 10,),
                  Text(
                    StringConst.ABOUTBGNO3,
                    textAlign: TextAlign.center,
                    style: GoogleFonts.lato(
                      color: Colors.white,
                      fontWeight: FontWeight.w600,
                      fontSize: 42,
                    ),
                  ),
                  Text(
                    StringConst.ABOUTBGNAME3,
                    textAlign: TextAlign.center,
                    style: GoogleFonts.lato(
                      color: Colors.white,
                      fontWeight: FontWeight.w500,
                      fontSize: 24,
                    ),
                  ),
                ],
              ),

              Column(
                children: [
                  Container(
                    height: 75,
                    width: 75,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      shape: BoxShape.circle,

                      image: DecorationImage(
                        image: NetworkImage(employee),
                        fit: BoxFit.none,

                      ),
                    ),
                  ),
                  SizedBox(height: 10,),
                  Text(
                    StringConst.ABOUTBGNO4,
                    textAlign: TextAlign.center,
                    style: GoogleFonts.lato(
                      color: Colors.white,
                      fontWeight: FontWeight.w600,
                      fontSize: 42,
                    ),
                  ),
                  Text(
                    StringConst.ABOUTBGNAME4,
                    textAlign: TextAlign.center,
                    style: GoogleFonts.lato(
                      color: Colors.white,
                      fontWeight: FontWeight.w500,
                      fontSize: 24,
                    ),
                  ),
                ],
              ),
            ],
          ),
        )
    );
  }
}

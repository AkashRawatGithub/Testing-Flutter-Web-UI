import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:responsive_framework/responsive_wrapper.dart';

import '../../Values/values.dart';
import '../../widgets/constants.dart';
import '../../widgets/screen_helper.dart';

class FeaturesSection extends StatefulWidget {
  const FeaturesSection({Key? key}) : super(key: key);

  @override
  State<FeaturesSection> createState() => _FeaturesSectionState();
}

class _FeaturesSectionState extends State<FeaturesSection> {
  @override
  Widget build(BuildContext context) {
    return Center(
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
    );
  }

  Widget _buildUi(BuildContext context, double width, Color maincolor){
    return ResponsiveWrapper(
        maxWidth: width,
        minWidth: width,
        child:Padding(
          padding: const EdgeInsets.symmetric(horizontal: 100.0),
          child:  Column(mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                StringConst.FEATURES,
                style: GoogleFonts.inter(
                  color: textcolor,
                  fontWeight: FontWeight.w500,
                  fontSize: 26,
                ),
              ),
              SizedBox(height: 50,),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(height:114,width:114,decoration:BoxDecoration(
                    color: featureiconBG,
                    shape: BoxShape.circle
                  ),child: Center(child: Image.asset(StringConst.FEATURESIMG))),
                  SizedBox(width: 40,),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        StringConst.FEATURESTITLE1,
                        style: GoogleFonts.lato(
                          color: textcolor,
                          fontWeight: FontWeight.w500,
                          fontSize: 24,
                        ),
                      ),
                      SizedBox(height: 8,),
                      SizedBox(
                        width: width/1.41,
                        child: Text(
                          StringConst.FEATURESDESC1,
                          textAlign: TextAlign.start,
                          style: GoogleFonts.roboto(
                            color: desccolor,
                            fontWeight: FontWeight.w400,
                            fontSize: 16,
                            height: 1.5,
                          ),
                        ),
                      ),
                    ],
                  ),


                ],
              ),
              SizedBox(height: 50,),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(height:114,width:114,decoration:BoxDecoration(
                      color: featureiconBG,
                      shape: BoxShape.circle
                  ),child: Center(child: Image.asset(StringConst.FEATURESIMG2))),
                  SizedBox(width: 40,),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        StringConst.FEATURESTITLE2,
                        style: GoogleFonts.lato(
                          color: textcolor,
                          fontWeight: FontWeight.w500,
                          fontSize: 24,

                        ),
                      ),
                      SizedBox(height: 8,),
                      SizedBox(
                        width: width/1.41,
                        child: Text(
                          StringConst.FEATURESDESC2,
                          textAlign: TextAlign.start,
                          style: GoogleFonts.roboto(
                            color: desccolor,
                            fontWeight: FontWeight.w400,
                            fontSize: 16,
                            height: 1.5,
                          ),
                        ),
                      ),
                    ],
                  ),


                ],
              ),
              SizedBox(height: 50,),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(height:114,width:114,decoration:BoxDecoration(
                      color: featureiconBG,
                      shape: BoxShape.circle
                  ),child: Center(child: Image.asset(StringConst.FEATURESIMG3))),
                  SizedBox(width: 40,),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        StringConst.FEATURESTITLE3,
                        style: GoogleFonts.lato(
                          color: textcolor,
                          fontWeight: FontWeight.w500,
                          fontSize: 24,
                        ),
                      ),
                      SizedBox(height: 8,),
                      SizedBox(
                        width: width/1.41,
                        child: Text(
                          StringConst.FEATURESDESC3,
                          textAlign: TextAlign.start,
                          style: GoogleFonts.roboto(
                            color: desccolor,
                            fontWeight: FontWeight.w400,
                            fontSize: 16,
                            height: 1.5,
                          ),
                        ),
                      ),
                    ],
                  ),


                ],
              ),
              SizedBox(height: 50,),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(height:114,width:114,decoration:BoxDecoration(
                      color: featureiconBG,
                      shape: BoxShape.circle
                  ),child: Center(child: Image.asset(StringConst.FEATURESIMG4))),
                  SizedBox(width: 40,),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        StringConst.FEATURESTITLE4,
                        style: GoogleFonts.lato(
                          color: textcolor,
                          fontWeight: FontWeight.w500,
                          fontSize: 24,

                        ),
                      ),
                      SizedBox(height: 8,),
                      SizedBox(
                        width: width/1.41,
                        child: Text(
                          StringConst.FEATURESDESC4,
                          textAlign: TextAlign.start,
                          style: GoogleFonts.roboto(
                            color: desccolor,
                            fontWeight: FontWeight.w400,
                            fontSize: 16,
                            height: 1.5,
                          ),
                        ),
                      ),
                    ],
                  ),


                ],
              ),
              SizedBox(height: 50,),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(height:114,width:114,decoration:BoxDecoration(
                      color: featureiconBG,
                      shape: BoxShape.circle
                  ),child: Center(child: Image.asset(StringConst.FEATURESIMG5))),
                  SizedBox(width: 40,),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        StringConst.FEATURESTITLE5,
                        style: GoogleFonts.lato(
                          color: textcolor,
                          fontWeight: FontWeight.w500,
                          fontSize: 24,
                        ),
                      ),
                      SizedBox(height: 8,),
                      SizedBox(
                        width: width/1.41,
                        child: Text(
                          StringConst.FEATURESDESC5,
                          textAlign: TextAlign.start,
                          style: GoogleFonts.roboto(
                            color: desccolor,
                            fontWeight: FontWeight.w400,
                            fontSize: 16,
                            height: 1.5,
                          ),
                        ),
                      ),
                    ],
                  ),


                ],
              ),
              SizedBox(height: 100,),
            ],
          ),
        )
    );
  }
}

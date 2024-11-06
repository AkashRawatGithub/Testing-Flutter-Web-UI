import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:responsive_framework/responsive_wrapper.dart';

import '../../Values/values.dart';
import '../../widgets/constants.dart';
import '../../widgets/custom-buttons.dart';
import '../../widgets/getimage.dart';
import '../../widgets/screen_helper.dart';

class AttributesSection extends StatefulWidget {
  const AttributesSection({Key? key}) : super(key: key);

  @override
  State<AttributesSection> createState() => _AttributesSectionState();
}

class _AttributesSectionState extends State<AttributesSection> {
  var viewWhyus ;

  @override
  void initState() {
    super.initState();
    fetchImageUrlAndRegisterView(context,setState,StringConst.ABOUTUSWHYUS,'whyusUrl','100%','100%','','','');
    viewWhyus = HtmlElementView(
      key: UniqueKey(), // Force rebuild when imageUrl changes
      viewType: 'whyusUrl',
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: searchshareBackground,
      child: Stack(
        children: [
          Positioned(top:-180,right:-20,child: Image.asset(StringConst.ATTRIBUTEBG,fit: BoxFit.contain)),
          Positioned(bottom:-150,child: Image.asset(StringConst.ATTRIBUTEBG2,fit: BoxFit.contain)),
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
      ),
    );
  }

  Widget _buildUi(BuildContext context, double width, Color maincolor){
    return ResponsiveWrapper(
        maxWidth: width,
        minWidth: width,
        child:Padding(
          padding: const EdgeInsets.symmetric(horizontal: 120.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(height: 50,),
              Text(
                StringConst.ATTRIBUTETITLE,
                textAlign: TextAlign.center,
                style: GoogleFonts.lato(
                  color: textcolor,
                  fontWeight: FontWeight.w600,
                  fontSize: 40,
                  height: 2,
                ),
              ),
              SizedBox(
                width: width/1.8,
                child: Text(
                  StringConst.ATTRIBUTESUBTITLE,
                  textAlign: TextAlign.center,
                  style: GoogleFonts.lato(
                    color: desccolor,
                    fontWeight: FontWeight.w400,
                    fontSize: 16,
                    height: 1.5,
                  ),
                ),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [

                  SizedBox(height: 50,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Image.asset(StringConst.ATTRIBUTEIMG1,height: 244,width: 366,),
                      Padding(
                        padding: const EdgeInsets.only(right: 25.0),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              StringConst.ATTRIBUTEITEMTITLE,
                              style: GoogleFonts.lato(
                                color: textcolor,
                                fontWeight: FontWeight.w600,
                                fontSize: 24,
                                height: 2,
                              ),
                            ),
                            SizedBox(
                              width: width/1.8,
                              child: Text(
                                StringConst.ATTRIBUTEITEMDESC,
                                textAlign: TextAlign.start,
                                style: GoogleFonts.lato(
                                  color: desccolor,
                                  fontWeight: FontWeight.w400,
                                  fontSize: 16,
                                  height: 1.5,
                                ),
                              ),
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                  SizedBox(height: 20,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [

                      Padding(
                        padding: const EdgeInsets.only(left: 25.0),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              StringConst.ATTRIBUTEITEMTITLE2,
                              style: GoogleFonts.lato(
                                color: textcolor,
                                fontWeight: FontWeight.w600,
                                fontSize: 24,
                                height: 2,
                              ),
                            ),
                            SizedBox(
                              width: width/1.8,
                              child: Text(
                                StringConst.ATTRIBUTEITEMDESC2,
                                textAlign: TextAlign.start,
                                style: GoogleFonts.lato(
                                  color: desccolor,
                                  fontWeight: FontWeight.w400,
                                  fontSize: 16,
                                  height: 1.5,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Image.asset(StringConst.ATTRIBUTEIMG2,height: 244,width: 366,),

                    ],
                  ),
                  SizedBox(height: 20,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Image.asset(StringConst.ATTRIBUTEIMG3,height: 244,width: 366,),

                      Padding(
                        padding: const EdgeInsets.only(right: 25.0),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              StringConst.ATTRIBUTETITLE3,
                              style: GoogleFonts.lato(
                                color: textcolor,
                                fontWeight: FontWeight.w600,
                                fontSize: 24,
                                height: 2,
                              ),
                            ),
                            SizedBox(
                              width: width/1.8,
                              child: Text(
                                StringConst.ATTRIBUTEDESC3,
                                textAlign: TextAlign.start,
                                style: GoogleFonts.lato(
                                  color: desccolor,
                                  fontWeight: FontWeight.w400,
                                  fontSize: 16,
                                  height: 1.5,
                                ),
                              ),
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                  SizedBox(height: 20,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [

                      Padding(
                        padding: const EdgeInsets.only(left: 25.0),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              StringConst.ATTRIBUTETITLE4,
                              style: GoogleFonts.lato(
                                color: textcolor,
                                fontWeight: FontWeight.w600,
                                fontSize: 24,
                                height: 2,
                              ),
                            ),
                            SizedBox(
                              width: width/1.8,
                              child: Text(
                                StringConst.ATTRIBUTEDESC4,
                                textAlign: TextAlign.start,
                                style: GoogleFonts.lato(
                                  color: desccolor,
                                  fontWeight: FontWeight.w400,
                                  fontSize: 16,
                                  height: 1.5,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),

                      Image.asset(StringConst.ATTRIBUTEIMG4,height: 244,width: 366,),

                    ],
                  ),
                  SizedBox(height: 20,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Image.asset(StringConst.ATTRIBUTEIMG5,height: 244,width: 366,),

                      Padding(
                        padding: const EdgeInsets.only(right: 25.0),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              StringConst.ATTRIBUTETITLE5,
                              style: GoogleFonts.lato(
                                color: textcolor,
                                fontWeight: FontWeight.w600,
                                fontSize: 24,
                                height: 2,
                              ),
                            ),
                            SizedBox(
                              width: width/1.8,
                              child: Text(
                                StringConst.ATTRIBUTEDESC5,
                                textAlign: TextAlign.start,
                                style: GoogleFonts.lato(
                                  color: desccolor,
                                  fontWeight: FontWeight.w400,
                                  fontSize: 16,
                                  height: 1.5,
                                ),
                              ),
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                  SizedBox(height: 50,),
                ],
              ),
            ],
          ),
        )
    );
  }
}

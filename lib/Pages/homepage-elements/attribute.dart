import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:responsive_framework/responsive_wrapper.dart';

import '../../Values/values.dart';
import '../../widgets/constants.dart';
import '../../widgets/custom-buttons.dart';
import '../../widgets/getimage.dart';
import '../../widgets/screen_helper.dart';

class AttributeSection extends StatefulWidget {
  const AttributeSection({Key? key}) : super(key: key);

  @override
  State<AttributeSection> createState() => _AttributeSectionState();
}

class _AttributeSectionState extends State<AttributeSection> {

  var viewShare;
  @override
  void initState() {
    super.initState();

    fetchImageUrlAndRegisterView(context,setState,StringConst.SHARETRANSIMG,'shareUrl','fit-content','-webkit-fill-available','','','');
    viewShare= HtmlElementView(
      key: UniqueKey(), // Force rebuild when imageUrl changes
      viewType: 'shareUrl',
    );
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Positioned(top:-120,right:-20,child: Image.asset(StringConst.ATTRIBUTEBG,fit: BoxFit.contain)),
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
    );
  }

  Widget _buildUi(BuildContext context, double width, Color maincolor){
    return ResponsiveWrapper(
        maxWidth: width,
        minWidth: width,
        child:Padding(
          padding: const EdgeInsets.symmetric(horizontal: 50.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(height: 100,),
              Text(
                StringConst.BANNERTIELE,
                textAlign: TextAlign.center,
                style: GoogleFonts.lato(
                  color: desccolor,
                  fontWeight: FontWeight.w500,
                  fontSize: 18,
                  height: 2,
                ),
              ),
              SizedBox(height: 20,),
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
              SizedBox(height: 50,),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(StringConst.ATTRIBUTEIMG1,height: 244,width: 366,),
                  SizedBox(width: 20,),
                  Column(
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
                            color: textcolor,
                            fontWeight: FontWeight.w400,
                            fontSize: 16,
                            height: 2,
                          ),
                        ),
                      ),
                    ],
                  )
                ],
              ),
              SizedBox(height: 20,),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [

                  Column(
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
                            color: textcolor,
                            fontWeight: FontWeight.w400,
                            fontSize: 16,
                            height: 2,
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(width: 20,),
                  Image.asset(StringConst.ATTRIBUTEIMG2,height: 244,width: 366,),

                ],
              ),
              SizedBox(height: 20,),
              CustomTexticonButton(StringConst.ATTRIBUTEBTN, (){},43,239,30,16),
              SizedBox(height: 100,),
            ],
          ),
        )
    );
  }
}

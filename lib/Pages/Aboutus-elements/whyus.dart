import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:responsive_framework/responsive_wrapper.dart';

import '../../Values/values.dart';
import '../../widgets/constants.dart';
import '../../widgets/getimage.dart';
import '../../widgets/screen_helper.dart';

class WhyusSection extends StatefulWidget {
  const WhyusSection({Key? key}) : super(key: key);

  @override
  State<WhyusSection> createState() => _WhyusSectionState();
}

class _WhyusSectionState extends State<WhyusSection> {
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
          Positioned(top:-150,right:-20,child: Image.asset(StringConst.ATTRIBUTEBG,fit: BoxFit.contain)),
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
          padding: const EdgeInsets.symmetric(horizontal: 50.0,vertical: 100),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [

              SizedBox(
                width: width/2.5,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [


                    Text(
                      StringConst.ABOUTUSTITLE3,
                      textAlign: TextAlign.center,
                      style: GoogleFonts.lato(
                        color: textcolor,
                        fontWeight: FontWeight.w600,
                        fontSize: 40,

                      ),
                    ),
                    SizedBox(height: 10,),
                    Text(
                      StringConst.ABOUTUSDISC3,
                      textAlign: TextAlign.start,
                      style: GoogleFonts.roboto(
                          color: desccolor,
                          fontWeight: FontWeight.w400,
                          fontSize: 16,
                          height: 1.5
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(width: 100,),
              SizedBox(
                height: 445,
                width: 639,
                child: viewWhyus,
              ),

            ],
          ),
        )
    );
  }
}

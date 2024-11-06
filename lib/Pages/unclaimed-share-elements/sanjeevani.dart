import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:responsive_framework/responsive_wrapper.dart';

import '../../Values/values.dart';
import '../../widgets/constants.dart';
import '../../widgets/getimage.dart';
import '../../widgets/screen_helper.dart';

class SanjeevaniSection extends StatefulWidget {
  const SanjeevaniSection({Key? key}) : super(key: key);

  @override
  State<SanjeevaniSection> createState() => _SanjeevaniSectionState();
}

class _SanjeevaniSectionState extends State<SanjeevaniSection> {
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
          padding: const EdgeInsets.symmetric(horizontal: 50.0,vertical: 50),
          child:  Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [

              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    StringConst.SANJEEVANI,
                    style: GoogleFonts.lato(
                      color: textcolor,
                      fontWeight: FontWeight.w600,
                      fontSize: 40,
                      height: 2,
                    ),
                  ),
                  SizedBox(
                    width: width/2.5,
                    child: Text(
                      StringConst.SANJEEVANIDESC,
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
              SizedBox(width: 60,),
              Image.asset(StringConst.SANJEEVANIIMG,height: 393,
                width: 551,),

            ],
          ),
        )
    );
  }
}

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:responsive_framework/responsive_wrapper.dart';

import '../../Values/values.dart';
import '../../widgets/constants.dart';
import '../../widgets/getimage.dart';
import '../../widgets/screen_helper.dart';

class ContactusBanner extends StatefulWidget {
  const ContactusBanner({Key? key}) : super(key: key);

  @override
  State<ContactusBanner> createState() => _ContactusBannerState();
}

class _ContactusBannerState extends State<ContactusBanner> {

  var viewAbout;
  var viewVector;
  var bannerBG;
  @override
  void initState() {
    super.initState();
    bannerBG=StringConst.CONTACTUSBG;
    viewAbout = StringConst.ABOUTUSBG;
    fetchImageUrlAndRegisterView(context,setState,StringConst.CONTACTUSBANNER,'contactUrl','100%','100%','','','');
    viewVector = HtmlElementView(
      key: UniqueKey(), // Force rebuild when imageUrl changes
      viewType: 'contactUrl',
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 316,

      decoration: BoxDecoration(
        color: aboutBG,
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
          child: Stack(
            children: [
              Positioned(
                  top:10,right:290 ,child: Image.asset(bannerBG)),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 150.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [

                        Text(
                          StringConst.CONTACTUSTITLE,
                          textAlign: TextAlign.center,
                          style: GoogleFonts.lato(
                            color: Colors.white,
                            fontWeight: FontWeight.w600,
                            fontSize: 38,
                          ),
                        ),
                        SizedBox(height: 10,),
                        Text(
                          StringConst.CONTACTUSBREADCRUMP,
                          textAlign: TextAlign.center,
                          style: GoogleFonts.roboto(
                            color: Colors.white,
                            fontWeight: FontWeight.w400,
                            fontSize: 16,
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 269,
                    width: 355.73,
                    child: viewVector,
                  )
                ],
              ),

            ],
          ),
        )
    );
  }
}

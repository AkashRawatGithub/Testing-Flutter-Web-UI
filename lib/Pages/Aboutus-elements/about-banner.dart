import 'package:flutter/material.dart';
import '../../Values/values.dart';
import '../../widgets/constants.dart';
import '../../widgets/getimage.dart';
import '../../widgets/screen_helper.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:responsive_framework/responsive_wrapper.dart';

class AboutBanner extends StatefulWidget {
  const AboutBanner({Key? key}) : super(key: key);

  @override
  State<AboutBanner> createState() => _AboutBannerState();
}

class _AboutBannerState extends State<AboutBanner> {

  var viewAbout;
  var viewVector;
  @override
  void initState() {
    super.initState();

    viewAbout = StringConst.ABOUTUSBG;
    fetchImageUrlAndRegisterView(context,setState,StringConst.ABOUTUSVECTOR,'aboutUrl','100%','100%','','','');
    viewVector = HtmlElementView(
      key: UniqueKey(), // Force rebuild when imageUrl changes
      viewType: 'aboutUrl',
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 316,

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
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 150.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [


                    Text(
                      StringConst.ABOUTUSTITLE,
                      textAlign: TextAlign.center,
                      style: GoogleFonts.lato(
                        color: Colors.white,
                        fontWeight: FontWeight.w600,
                        fontSize: 38,
                      ),
                    ),
                    SizedBox(height: 10,),
                    Text(
                      StringConst.ABOUTUSSUB,
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
        )
    );
  }
}

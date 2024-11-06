import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:responsive_framework/responsive_wrapper.dart';

import '../../Values/values.dart';
import '../../widgets/constants.dart';
import '../../widgets/getimage.dart';
import '../../widgets/screen_helper.dart';

class UnclaimedshareBanner extends StatefulWidget {
  const UnclaimedshareBanner({Key? key}) : super(key: key);

  @override
  State<UnclaimedshareBanner> createState() => _UnclaimedshareBannerState();
}

class _UnclaimedshareBannerState extends State<UnclaimedshareBanner> {

  var viewUnclaim;
  var unclaimVector;
  @override
  void initState() {
    super.initState();

    viewUnclaim = StringConst.ABOUTUSBG;
    fetchImageUrlAndRegisterView(context,setState,StringConst.UNCLAIMBANNER,'unclaimUrl','100%','100%','','','');
    unclaimVector = HtmlElementView(
      key: UniqueKey(), // Force rebuild when imageUrl changes
      viewType: 'unclaimUrl',
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 316,

      decoration: BoxDecoration(
        color: aboutBG,
        image: DecorationImage(
          image: NetworkImage(viewUnclaim),
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
                      StringConst.UNCLAIMTITLE,
                      textAlign: TextAlign.center,
                      style: GoogleFonts.lato(
                        color: Colors.white,
                        fontWeight: FontWeight.w600,
                        fontSize: 38,
                      ),
                    ),
                    SizedBox(height: 10,),
                    Text(
                      StringConst.UNCLAIMBREADCRUMP,
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
                height: 240,
                width: 365.19,
                child: unclaimVector,
              )
            ],
          ),
        )
    );
  }
}

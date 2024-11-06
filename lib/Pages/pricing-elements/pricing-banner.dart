import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:responsive_framework/responsive_wrapper.dart';

import '../../Values/values.dart';
import '../../widgets/constants.dart';
import '../../widgets/getimage.dart';
import '../../widgets/screen_helper.dart';

class PricingBanner extends StatefulWidget {
  const PricingBanner({Key? key}) : super(key: key);

  @override
  State<PricingBanner> createState() => _PricingBannerState();
}

class _PricingBannerState extends State<PricingBanner> {

  var viewPrice;
  var viewVector;
  @override
  void initState() {
    super.initState();

    viewPrice = StringConst.ABOUTUSBG;
    fetchImageUrlAndRegisterView(context,setState,StringConst.PRICINGBANNER,'priceUrl','100%','100%','','','');
    viewVector = HtmlElementView(
      key: UniqueKey(), // Force rebuild when imageUrl changes
      viewType: 'priceUrl',
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 316,

      decoration: BoxDecoration(
        color: aboutBG,
        image: DecorationImage(
          image: NetworkImage(viewPrice),
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
                      StringConst.PRICINGTITLE,
                      textAlign: TextAlign.center,
                      style: GoogleFonts.lato(
                        color: Colors.white,
                        fontWeight: FontWeight.w600,
                        fontSize: 38,
                      ),
                    ),
                    SizedBox(height: 10,),
                    Text(
                      StringConst.PRICINGBREADCRUMP,
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
                height: 225,
                width: 432.73,
                child: viewVector,
              )
            ],
          ),
        )
    );
  }
}

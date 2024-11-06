import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:responsive_framework/responsive_wrapper.dart';

import '../../Values/values.dart';
import '../../widgets/constants.dart';
import '../../widgets/getimage.dart';
import '../../widgets/screen_helper.dart';

class AdvisorySection extends StatefulWidget {
  const AdvisorySection({Key? key}) : super(key: key);

  @override
  State<AdvisorySection> createState() => _AdvisorySectionState();
}

class _AdvisorySectionState extends State<AdvisorySection> {
  var viewAdvisory;

  @override
  void initState() {
    super.initState();
    fetchImageUrlAndRegisterView(context,setState,StringConst.ADVISORY,'advisoryUrl','100%','100%','','','');
    viewAdvisory = HtmlElementView(
      key: UniqueKey(), // Force rebuild when imageUrl changes
      viewType: 'advisoryUrl',
    );
  }

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
          padding: const EdgeInsets.symmetric(horizontal: 50.0,vertical: 100),
          child:  Column(
            children: [
              Text(
                StringConst.ADVISORYTITLE,
                style: GoogleFonts.lato(
                  color: textcolor,
                  fontWeight: FontWeight.w600,
                  fontSize: 40,

                ),
              ),
              SizedBox(height: 60,),
              SizedBox(
                height: 531,
                width: 1240,
                child: viewAdvisory,
              ),
            ],
          ),
        )
    );
  }
}

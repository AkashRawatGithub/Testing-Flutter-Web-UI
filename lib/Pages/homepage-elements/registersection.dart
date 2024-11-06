import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:responsive_framework/responsive_wrapper.dart';
import 'package:provider/provider.dart';
import '../../Values/values.dart';
import '../../listner/listner.dart';
import '../../model/theme/theme-details.dart';
import '../../widgets/constants.dart';
import '../../widgets/custom-buttons.dart';
import '../../widgets/getimage.dart';
import '../../widgets/screen_helper.dart';

class RegisterSection extends StatefulWidget {
  const RegisterSection({Key? key}) : super(key: key);

  @override
  State<RegisterSection> createState() => _RegisterSectionState();
}
List<ThemeTestimonial>? get_testimonial;
List<ThemeSetting>? get_themedetail;
class _RegisterSectionState extends State<RegisterSection> {

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
    final updater = Provider.of<Updater>(context, listen: true);
    get_themedetail = updater.getcustomertheme;
    get_testimonial = updater.getestimoniyal;

    final bool hasThemeDetails = get_themedetail != null && get_themedetail!.isNotEmpty;
    if (hasThemeDetails) {
      // StringConst.COMPANYNAME = get_themedetail![0].companyName;
    }
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
          padding: const EdgeInsets.symmetric(vertical: 100.0,horizontal: 50),
          child: Container(

            decoration: BoxDecoration(
              color: dullcolor,
              borderRadius: BorderRadius.circular(118)
            ),
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 15.0,horizontal: 15 ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [

                      Padding(
                        padding: const EdgeInsets.only(left: 50.0),
                        child: Text(
                          StringConst.COMPANYNAME,
                          textAlign: TextAlign.center,
                          style: GoogleFonts.roboto(
                            color: textcolor,
                            fontWeight: FontWeight.w500,
                            fontSize: 28,

                          ),
                        ),
                      ),
                    ],
                  ),
                  CustomTexticonButton(StringConst.SHARETRANSBTN, (){},81,307,117,20),
                ],
              ),
            ),
          ),
        )
    );
  }
}

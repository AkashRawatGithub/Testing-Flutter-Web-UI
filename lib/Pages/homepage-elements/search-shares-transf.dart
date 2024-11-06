import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:responsive_framework/responsive_wrapper.dart';

import '../../Values/values.dart';
import '../../widgets/constants.dart';
import '../../widgets/custom-buttons.dart';
import '../../widgets/getimage.dart';
import '../../widgets/screen_helper.dart';

class SearchShareTransfer extends StatefulWidget {
  const SearchShareTransfer({Key? key}) : super(key: key);

  @override
  State<SearchShareTransfer> createState() => _SearchShareTransferState();
}

class _SearchShareTransferState extends State<SearchShareTransfer> {

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
    return Container(
      height: 483,
      color: searchshareBackground,
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
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    StringConst.SHARETRANSTITLE,
                    textAlign: TextAlign.center,
                    style: GoogleFonts.lato(
                      color: textcolor,
                      fontWeight: FontWeight.w500,
                      fontSize: 28,
                      height: 2,
                    ),
                  ),
                  SizedBox(height: 10),
                  Text(
                    StringConst.SHARETRANSSUBTITLE,
                    textAlign: TextAlign.center,
                    style: GoogleFonts.lato(
                      color: desccolor,
                      fontWeight: FontWeight.w400,
                      fontSize: 22,
                    ),
                  ),
                  SizedBox(height: 50),
                  CustomTexticonButton(StringConst.SHARETRANSBTN, (){},43,239,30,16)
                ],
              ),
              Container(
                height: 361,
                width: 524,
                child: viewShare,
              )
            ],
          ),
        )
    );
  }
}

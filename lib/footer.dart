import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'package:google_fonts/google_fonts.dart';
import 'package:newjeevantikacustomerswebsite/routes/urlroute.dart';

import 'package:responsive_framework/responsive_framework.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../Values/values.dart';
import '../../widgets/constants.dart';
import 'package:provider/provider.dart';
import '../../widgets/getimage.dart';
import '../../widgets/screen_helper.dart';
import 'listner/listner.dart';
import 'model/theme/theme-details.dart';

class FooterSection extends StatefulWidget {
  const FooterSection({Key? key}) : super(key: key);

  @override
  State<FooterSection> createState() => _FooterSectionState();
}

class _FooterSectionState extends State<FooterSection> {
  List<ThemeSetting>? getThemeDetail;
  Widget? viewFooter;

  bool firstTime = false;
  @override
  void initState() {
    super.initState();
    firstTime = true;
  }

  @override
  Widget build(BuildContext context) {
    getThemeDetail = Provider.of<Updater>(context, listen: false).getcustomertheme;
    if (getThemeDetail != null && getThemeDetail!.isNotEmpty) {
      final logoUrl = getThemeDetail![0].logo;

      // Fetch the image URL and register the view
      fetchImageUrlforLogo(
        context,
        setState,
        logoUrl,
        'footerUrl',
        '100%',
        '100%',
        '',
        '',
        '',
      );

      // Create the view with the retrieved logo URL
      if (firstTime == true){
        setState(() {

          viewFooter = HtmlElementView(
            key: UniqueKey(), // Force rebuild when imageUrl changes
            viewType: 'footerUrl',
          );
        });
      }
      firstTime = false;
    }
    return Container(
      color: footerBG,
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
      child: Center(
        child: SizedBox(
          height: width > 720 ? 416 : 500,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                flex: width > 720 ? 4 : 20,
                child: Column(
                  children: [
                    SizedBox(
                      height: width < 640 ? 80 :30,
                    ),
                    Container(
                      height: 96,
                      width: 172,
                      child: viewFooter,
                    ),
                    SizedBox(height: 10,),
                    Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Padding(
                              padding: EdgeInsets.all(width < 800?15.0: 20),
                              child: MouseRegion(
                                cursor: MaterialStateMouseCursor.clickable,
                                child: GestureDetector(
                                  onTap: () {
                                    Navigator.pushNamed(context, RoutesName.HOME);
                                  },
                                  child: Text(
                                    "Home",
                                    style: GoogleFonts.roboto(
                                      color: Colors.white,
                                      fontWeight: FontWeight.w400,
                                      fontSize: width < 800 ? 12 : 16.0,
                                      // height: 1
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.all(width < 800?15.0: 20),
                              child: MouseRegion(
                                cursor: MaterialStateMouseCursor.clickable,
                                child: GestureDetector(
                                  onTap: () {
                                    Navigator.pushNamed(context, RoutesName.ABOUT);
                                  },
                                  child: Text(
                                    "About",
                                    style: GoogleFonts.roboto(
                                      color: Colors.white,
                                      fontWeight: FontWeight.w400,
                                      fontSize: width < 800 ? 12 : 16.0,
                                      // height: 1
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.all(width < 800?15.0: 20),
                              child:MouseRegion(
                                cursor: MaterialStateMouseCursor.clickable,
                                child: GestureDetector(
                                  onTap: () {
                                    Navigator.pushNamed(context, RoutesName.HOME);
                                  },
                                  child: Text(
                                    "Service",
                                    style: GoogleFonts.roboto(
                                      color: Colors.white,
                                      fontWeight: FontWeight.w400,
                                      fontSize: width < 800 ? 12 : 16.0,
                                      // height: 1
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.all(width < 800?15.0: 20),
                              child: MouseRegion(
                                cursor: MaterialStateMouseCursor.clickable,
                                child: GestureDetector(
                                  onTap: () {
                                    Navigator.pushNamed(context, RoutesName.CONTACTUS);
                                  },
                                  child: Text(
                                    "Contact Us",
                                    style: GoogleFonts.roboto(
                                      color: Colors.white,
                                      fontWeight: FontWeight.w400,
                                      fontSize: width < 800 ? 12 : 16.0,
                                      // height: 1
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Padding(
                              padding: EdgeInsets.all(width < 800?15.0: 15),
                              child: MouseRegion(
                                cursor: MaterialStateMouseCursor.clickable,
                                child: GestureDetector(
                                  onTap: () {
                                    Navigator.pushNamed(context, RoutesName.TERMS);
                                  },
                                  child: Text(
                                    "Terms of Service",
                                    style: GoogleFonts.roboto(
                                      color: Colors.white,
                                      fontWeight: FontWeight.w400,
                                      fontSize: width < 800 ? 12 : 16.0,
                                      // height: 1
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.all(width < 800?15.0: 15),
                              child: MouseRegion(
                                cursor: MaterialStateMouseCursor.clickable,
                                child: GestureDetector(
                                  onTap: () {
                                    Navigator.pushNamed(context, RoutesName.REFUNDPOLICY);
                                  },
                                  child: Text(
                                    "Cancellation and Refund Policy",
                                    style: GoogleFonts.roboto(
                                      color: Colors.white,
                                      fontWeight: FontWeight.w400,
                                      fontSize: width < 800 ? 12 : 16.0,
                                      // height: 1
                                    ),
                                  ),
                                ),
                              ),
                            ),

                          ],
                        ),
                      ],
                    ),
                    SizedBox(height: 10,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: MouseRegion(
                            cursor: MaterialStateMouseCursor.clickable,
                            child: GestureDetector(
                              onTap: _openFacebookProfile,
                              child: Row(
                                children: [
                                  Container(
                                      height: 40,
                                      width: 40,
                                      decoration: BoxDecoration(
                                          color: Colors.white,
                                          shape: BoxShape.circle),
                                      child: Center(
                                          child: Icon(
                                          FontAwesomeIcons.instagram,
                                            size: 20,
                                            color: footerBG,
                                          ))),

                                ],
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: MouseRegion(
                            cursor: MaterialStateMouseCursor.clickable,
                            child: GestureDetector(
                              onTap: _openTwitterProfile,
                              child: Row(
                                children: [
                                  Container(
                                      height: 40,
                                      width: 40,
                                      decoration: BoxDecoration(
                                          color: Colors.white,
                                          shape: BoxShape.circle),
                                      child: Center(
                                          child: Icon(FontAwesomeIcons.linkedinIn,
                                            size: 20,
                                            color: footerBG,
                                          ))),

                                ],
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Row(
                            children: [
                              Container(
                                  height: 40,
                                  width: 40,
                                  decoration: BoxDecoration(
                                      color: Colors.white, shape: BoxShape.circle),
                                  child: Center(
                                      child: Icon(
                                        FontAwesomeIcons.twitter,
                                        size: 20,
                                        color: footerBG,
                                      ))),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Row(
                            children: [
                              Container(
                                  height: 40,
                                  width:40,
                                  decoration: BoxDecoration(
                                      color: Colors.white, shape: BoxShape.circle),
                                  child: Center(
                                      child: Icon(
                                        FontAwesomeIcons.facebookF,
                                        size: 20,
                                        color: footerBG,
                                      ))),
                            ],
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 10,),
                  ],
                ),
              ),
              Expanded(
                flex: 1,
                child: Container(
                  decoration: const BoxDecoration(
                      border: Border(
                        top: BorderSide(
                          color: Colors.white,
                          width: .1,
                        ),
                      )),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(vertical: 15.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text("© 2024 Jeevantika, Inc. All rights reserved.",
                            style: GoogleFonts.roboto(
                              color: footertext,
                              fontWeight: FontWeight.w400,
                              fontSize: 16.0,
                              // height: 1
                            )),
                      ],
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
  void _openFacebookProfile() async {
    final facebookUrl =
        'https://www.facebook.com/people/Jeevantika-Consultancy-Services/100070239408692/';
    final webUrl =
        'https://www.facebook.com/people/Jeevantika-Consultancy-Services/100070239408692/';

    if (await canLaunch(facebookUrl)) {
      await launch(facebookUrl);
    } else {
      await launch(webUrl);
    }
  }

  void _openTwitterProfile() async {
    final twitterUrl = 'https://www.twitter.com/';
    final webUrl = 'https://www.twitter.com/';

    if (await canLaunch(twitterUrl)) {
      await launch(twitterUrl);
    } else {
      await launch(webUrl);
    }
  }
}

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:newjeevantikacustomerswebsite/Pages/login-elements/receive-otp.dart';

import 'package:responsive_framework/responsive_wrapper.dart';

import '../../Values/values.dart';
import '../../routes/urlroute.dart';
import '../../widgets/constants.dart';
import '../../widgets/custom-buttons.dart';
import '../../widgets/getimage.dart';
import '../../widgets/screen_helper.dart';
import '../../widgets/text-field.dart';

class OtpFormSection extends StatefulWidget {
  final Function(bool) onToggle;

  OtpFormSection({required this.onToggle});

  @override
  State<OtpFormSection> createState() => _OtpFormSectionState();
}

class _OtpFormSectionState extends State<OtpFormSection> {
  var viewotpBanner;
  final _phoneController = TextEditingController();
  bool _phone = false;

  @override
  void initState() {
    super.initState();
    fetchImageUrlAndRegisterView(context,setState,StringConst.OTPBANNER,'otpbannerUrl','100%','100%','','','');
    viewotpBanner = HtmlElementView(
      key: UniqueKey(), // Force rebuild when imageUrl changes
      viewType: 'otpbannerUrl',
    );

  }

  bool showOTPForm = false;

  void otpForm() {
    setState(() {
      showOTPForm = true;
    });
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedSwitcher(
      duration: const Duration(milliseconds: 300),
      transitionBuilder: (Widget child, Animation<double> animation) {
        return FadeTransition(opacity: animation, child: child);
      },
      child: showOTPForm==true?ReceiveOtpSection():Center(
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
      )
    );
  }

  bool showLoginForm = false;

  void toggleForm() {
    setState(() {
      showLoginForm = !showLoginForm;
      widget.onToggle(showLoginForm);
      // Notify parent widget
    });
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

              Expanded(

                child: SizedBox(
                  width: width/2.5,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [


                      Text(
                        StringConst.LOGINTITLE,
                        textAlign: TextAlign.center,
                        style: GoogleFonts.lato(
                          color: maincolor,
                          fontWeight: FontWeight.w600,
                          fontSize: 40,

                        ),
                      ),
                      SizedBox(height: 40,),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            StringConst.LOGINPHONE,
                            textAlign: TextAlign.start,
                            style: GoogleFonts.roboto(
                                color: _phone == true?Colors.red:desccolor,
                                fontWeight: FontWeight.w500,
                                fontSize: 16,
                                height: 1.5
                            ),
                          ),
                          SizedBox(height: 12,),
                          custom_textfield_onchange_numbers(setState,_phoneController, 'Enter your phone no.',(item) {
                            setState(() {
                              _phone = false;
                            });
                          }, (value) {
                            if (value.isEmpty) {
                              setState(() {
                                _phone = true;
                              });
                            }
                            return null;
                          },46),



                        ],
                      ),
                      SizedBox(height: 40,),
                      CustomLoginButton("Login",otpForm),
                      SizedBox(height: 50,),
                      MouseRegion(
                        cursor: MaterialStateMouseCursor.clickable,
                        child: GestureDetector(
                          onTap: toggleForm,
                          child: Text(
                            StringConst.LOGINWTPASS,
                            style: GoogleFonts.roboto(
                                color: desccolor,
                                fontWeight: FontWeight.w500,
                                fontSize: 16,
                                decoration: TextDecoration.underline
                            ),
                          ),
                        ),
                      ),
                      SizedBox(height: 25,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text(
                            StringConst.DONTHVACC,
                            style: GoogleFonts.roboto(
                              color: desccolor,
                              fontWeight: FontWeight.w600,
                              fontSize: 16,

                            ),
                          ),
                          MouseRegion(
                            cursor: MaterialStateMouseCursor.clickable,
                            child: GestureDetector(
                              onTap: (){
                                setState(() {
                                  Navigator.pushNamed(context, RoutesName.REGISTER);
                                });
                              },
                              child: Text(
                                StringConst.REGNOW,
                                style: GoogleFonts.roboto(
                                    color: desccolor,
                                    fontWeight: FontWeight.w600,
                                    fontSize: 16,
                                    decoration: TextDecoration.underline
                                ),
                              ),
                            ),
                          ),

                        ],
                      ),
                    ],
                  ),
                ),
              ),

              Row(
                children: [
                  SizedBox(
                    height: 534,
                    width: 745,
                    child: viewotpBanner,
                  ),
                ],
              ),

            ],
          ),
        )
    );
  }
}

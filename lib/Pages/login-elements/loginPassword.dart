import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:responsive_framework/responsive_wrapper.dart';

import '../../Values/values.dart';
import '../../routes/urlroute.dart';
import '../../widgets/constants.dart';
import '../../widgets/custom-buttons.dart';
import '../../widgets/getimage.dart';
import '../../widgets/screen_helper.dart';
import '../../widgets/text-field.dart';
import 'otp-login.dart';

class LoginFormSection extends StatefulWidget {
  final Function(bool) onToggle;

  LoginFormSection({required this.onToggle});

  @override
  State<LoginFormSection> createState() => _LoginFormSectionState();
}

class _LoginFormSectionState extends State<LoginFormSection> {
  var viewBanner;
  final _phoneController = TextEditingController();
  bool _phone = false;
  final _passwordController = TextEditingController();
  bool _password = false;

  bool _obscureText = true;

  void _toggleVisibility() {
    setState(() {
      _obscureText = !_obscureText;
    });
  }

  bool showLoginForm = true;

  void toggleForm() {
    setState(() {
      showLoginForm = !showLoginForm;
      widget.onToggle(showLoginForm);  // Notify parent widget
    });
  }
  @override
  void initState() {
    super.initState();
    fetchImageUrlAndRegisterView(context,setState,StringConst.LOGINBANNER,'bannerUrl','100%','100%','','','');
    viewBanner = HtmlElementView(
      key: UniqueKey(), // Force rebuild when imageUrl changes
      viewType: 'bannerUrl',
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

                          SizedBox(height: 20,),
                          Text(
                            StringConst.LOGINPASS,
                            textAlign: TextAlign.start,
                            style: GoogleFonts.roboto(
                                color: _password == true?Colors.red:desccolor,
                                fontWeight: FontWeight.w500,
                                fontSize: 16,
                                height: 1.5
                            ),
                          ),
                          SizedBox(height: 12,),
                          custom_textfield_onchange_password(setState,_passwordController, 'xxxxxxxxxxxxxx',(item) {
                            setState(() {
                              _password = false;
                            });
                          }, (value) {
                            if (value.isEmpty) {
                              setState(() {
                                _password = true;
                              });
                            }
                            return null;
                          },46, _obscureText,_toggleVisibility),


                        ],
                      ),
                      SizedBox(height: 40,),
                      CustomLoginButton("Login",(){
                        setState(() {

                          if (_phoneController.text.isEmpty) {
                            setState(() {
                              _phone = true;
                            });
                          }
                          if (_passwordController.text.isEmpty) {
                            setState(() {
                              _password = true;
                            });
                          }
                          if (_phone ||
                              _password) {
                            ScaffoldMessenger.of(context)
                                .showSnackBar(
                              SnackBar(
                                content: Text(
                                    'Please fill in all required fields.'),
                                duration: Duration(seconds: 2),
                              ),
                            );
                          }else{}
                        });

                      }),
                      SizedBox(height: 50,),

                      MouseRegion(
                        cursor: MaterialStateMouseCursor.clickable,
                        child: GestureDetector(
                          onTap: toggleForm,
                          child: Text(
                            StringConst.LOGINOTP,
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
              SizedBox(width: 200,),
              Row(
                children: [
                  SizedBox(
                    height: 526,
                    width: 537,
                    child: viewBanner,
                  ),
                ],
              ),

            ],
          ),
        )
    );
  }



}

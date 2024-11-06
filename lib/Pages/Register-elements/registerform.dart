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


class RegisterFormSection extends StatefulWidget {

  RegisterFormSection({
    Key? key,
  }) : super(key: key);

  @override
  State<RegisterFormSection> createState() => _RegisterFormSectionState();
}

class _RegisterFormSectionState extends State<RegisterFormSection> {
  var viewRegBanner;
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
  bool _isChecked = false;
  FocusNode _checkFocusNode = FocusNode();

  void toggleForm() {
    setState(() {
      showLoginForm = !showLoginForm;
       // Notify parent widget
    });
  }

  @override
  void initState() {
    super.initState();
    fetchImageUrlAndRegisterView(context,setState,StringConst.REGISTERBANNER,'registrationUrl','100%','100%','','','');
    viewRegBanner = HtmlElementView(
      key: UniqueKey(), // Force rebuild when imageUrl changes
      viewType: 'registrationUrl',
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
                        StringConst.REGISTERTITLE,
                        textAlign: TextAlign.center,
                        style: GoogleFonts.lato(
                          color: maincolor,
                          fontWeight: FontWeight.w600,
                          fontSize: 40,

                        ),
                      ),
                      SizedBox(height: 40,),
                      Padding(
                        padding: const EdgeInsets.only(left: 8.0),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              children: [
                                Expanded(
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        "First Name *",
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
                                ),
                                SizedBox(width: 15,),
                                Expanded(
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                       "Last Name *",
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
                                ),
                              ],
                            ),


                            SizedBox(height: 15,),
                            Text(
                              "Email *",
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
                             SizedBox(height: 15,),
                            Text(
                              "Mobile No. *",
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

                            SizedBox(height: 15,),
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

                            SizedBox(height: 15,),
                            Text(
                              "Confirm Password *",
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
                      ),
                      SizedBox(height: 20,),
                      Row(
                        children: [
                          Checkbox(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(3),
                            ),
                            side: MaterialStateBorderSide.resolveWith(
                                  (states) => BorderSide(
                                width: 1,
                                color: desccolor,
                              ),
                            ),
                            focusNode: _checkFocusNode,
                            fillColor: MaterialStateColor.resolveWith((states) => Colors.white),
                            checkColor: maincolor,
                            value: _isChecked,
                            onChanged: (bool? value) {
                              setState(() {
                                _isChecked = value!;
                              });
                            },
                          ),
                          Expanded(
                            child:  MouseRegion(
                              cursor: SystemMouseCursors.click,
                              child: GestureDetector(
                                onTap: () {
                                  setState(() {
                                    _isChecked = !_isChecked;
                                  });
                                },
                                child: Text(
                                  "Terms & Conditions*",
                                  textAlign: TextAlign.start,
                                  style: GoogleFonts.poppins(
                                    color: desccolor,
                                    fontSize: 16,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 40,),
                      CustomRegButton(StringConst.REGBTN,(){
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

                      SizedBox(height: 25,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text(
                            StringConst.ALREADYACC,
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
                                  Navigator.pushNamed(context, RoutesName.LOGIN);
                                });
                              },
                              child: Text(
                                StringConst.LOGINACC,
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
              SizedBox(width: 50,),
              Row(
                children: [
                  SizedBox(
                    height: 499,
                    width: 676.60,
                    child: viewRegBanner,
                  ),
                ],
              ),

            ],
          ),
        )
    );
  }



}

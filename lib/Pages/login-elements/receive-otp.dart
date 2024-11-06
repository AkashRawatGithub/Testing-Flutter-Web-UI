import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:responsive_framework/responsive_wrapper.dart';

import '../../Values/values.dart';
import '../../widgets/constants.dart';
import '../../widgets/custom-buttons.dart';
import '../../widgets/getimage.dart';
import '../../widgets/screen_helper.dart';
import '../../widgets/text-field.dart';

class ReceiveOtpSection extends StatefulWidget {
  ReceiveOtpSection({
    Key? key,
  }) : super(key: key);

  @override
  State<ReceiveOtpSection> createState() => _ReceiveOtpSectionState();
}

class _ReceiveOtpSectionState extends State<ReceiveOtpSection> {
  var viewotpfield;

  @override
  void initState() {
    super.initState();
    fetchImageUrlAndRegisterView(context,setState,StringConst.OTPFIELDBANNER,'otpfieldUrl','100%','100%','','','');
    viewotpfield = HtmlElementView(
      key: UniqueKey(), // Force rebuild when imageUrl changes
      viewType: 'otpfieldUrl',
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

  int secondsLeft = 120; // Initial time in seconds (2 minutes)

  Timer? _timer;

  void _startTimer() {
    _timer = Timer.periodic(Duration(seconds: 1), (timer) {
      setState(() {
        if (secondsLeft > 0) {
          secondsLeft--;
        } else {
          _timer?.cancel();
        }
      });
    });
  }




  String _formatTime(int seconds) {
    int minutes = seconds ~/ 60;
    int remainingSeconds = seconds % 60;

    String formattedMinutes = minutes.toString().padLeft(2, '0');
    String formattedSeconds = remainingSeconds.toString().padLeft(2, '0');

    return '$formattedMinutes:$formattedSeconds';
  }

  void _verifyOtp(){}

  bool showLoginForm = false;

  void toggleForm() {
    setState(() {
      showLoginForm = !showLoginForm;

      // Notify parent widget
    });
  }
  final List<TextEditingController> controllers =
  List.generate(4, (index) => TextEditingController());
  final List<FocusNode> focusNodes = List.generate(4, (index) => FocusNode());

  @override
  void dispose() {
    for (var controller in controllers) {
      controller.dispose();
    }
    for (var node in focusNodes) {
      node.dispose();
    }
    _timer?.cancel();
    super.dispose();
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
                        StringConst.OTPTITLE,
                        textAlign: TextAlign.center,
                        style: GoogleFonts.lato(
                          color: maincolor,
                          fontWeight: FontWeight.w600,
                          fontSize: 40,

                        ),
                      ),
                      SizedBox(height: 10,),
                      Text(
                        StringConst.OTPDESC1,
                        textAlign: TextAlign.center,
                        style: GoogleFonts.roboto(
                          color: desccolor,
                          fontWeight: FontWeight.w400,
                          fontSize: 16,

                        ),
                      ),
                      SizedBox(height: 5,),

                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text(
                            StringConst.OTPDESC2,
                            textAlign: TextAlign.center,
                            style: GoogleFonts.roboto(
                              color: desccolor,
                              fontWeight: FontWeight.w400,
                              fontSize: 16,

                            ),
                          ),
                          Text(
                            "*******470",
                            textAlign: TextAlign.center,
                            style: GoogleFonts.roboto(
                              color: desccolor,
                              fontWeight: FontWeight.w400,
                              fontSize: 16,

                            ),
                          ),

                        ],
                      ),
                      SizedBox(height: 40,),
                      Container(
                        width: width/4,

                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: List.generate(
                                4,
                                    (index) => Padding(
                                  padding:
                                  const EdgeInsets.symmetric(horizontal: 20.0),
                                  child: Container(
                                    width: 50,
                                    height: 50,


                                    child: TextField(
                                      cursorColor: maincolor,

                                      style: TextStyle(
                                        color: textcolor,
                                        fontWeight: FontWeight.w500,
                                        fontSize: 18.0,
                                      ),
                                      decoration: InputDecoration(
                                        counterText: "",
                                        border: OutlineInputBorder(
                                          borderSide: BorderSide(
                                            color: textcolor.withOpacity(.3),
                                            width: 1.5,
                                        ),
                                            borderRadius: BorderRadius.circular(5),),
                                        focusedBorder: OutlineInputBorder(
                                          borderRadius: BorderRadius.circular(5.0),
                                          borderSide: BorderSide(
                                            color: maincolor,
                                            width: 1.5,
                                          ),
                                        ),
                                      ),
                                      controller: controllers[index],
                                      focusNode: focusNodes[index],

                                      textAlign: TextAlign.center,
                                      keyboardType: TextInputType.number,
                                      inputFormatters: <TextInputFormatter>[
                                        FilteringTextInputFormatter.digitsOnly,
                                      ],
                                      maxLength: 1,
                                      onChanged: (value) {
                                        if (value.isNotEmpty && index < 3) {
                                          FocusScope.of(context).requestFocus(
                                              focusNodes[index + 1]);
                                        } else if (value.isEmpty && index > 0) {
                                          FocusScope.of(context).requestFocus(
                                              focusNodes[index - 1]);
                                        }
                                      },

                                    ),
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(height: 20,),
                            Padding(
                              padding: const EdgeInsets.only(right: 20.0),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  Text(
                                    _formatTime(secondsLeft),
                                    textAlign: TextAlign.center,
                                    style: GoogleFonts.poppins(
                                      color: desccolor,
                                      fontWeight: FontWeight.w500,
                                      fontSize: 14.0,
                                      // height: 1
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),

                      SizedBox(height: 50,),
                      CustomVerifyButton("Verify OTP",_verifyOtp),
                      SizedBox(height: 30,),
                      MouseRegion(
                        cursor: MaterialStateMouseCursor.clickable,
                        child: GestureDetector(
                          onTap: toggleForm,
                          child: Text(
                            StringConst.RESENDOTP,
                            style: GoogleFonts.roboto(
                                color: maincolor,
                                fontWeight: FontWeight.w600,
                                fontSize: 16,
                                decoration: TextDecoration.underline
                            ),
                          ),
                        ),
                      ),

                    ],
                  ),
                ),
              ),

              Row(
                children: [
                  SizedBox(
                    height: 520,
                    width: 677,
                    child: viewotpfield,
                  ),
                ],
              ),

            ],
          ),
        )
    );
  }
}

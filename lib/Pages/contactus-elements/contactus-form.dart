import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:responsive_framework/responsive_wrapper.dart';

import '../../Values/values.dart';
import '../../widgets/constants.dart';
import '../../widgets/custom-buttons.dart';
import '../../widgets/getimage.dart';
import '../../widgets/screen_helper.dart';
import '../../widgets/text-field.dart';

class CustomerformSection extends StatefulWidget {
  const CustomerformSection({Key? key}) : super(key: key);

  @override
  State<CustomerformSection> createState() => _CustomerformSectionState();
}

class _CustomerformSectionState extends State<CustomerformSection> {
  var viewForm;
  var location;

  @override
  void initState() {
    super.initState();
    fetchImageUrlAndRegisterView(context,setState,StringConst.CONTACTUSFORMIMG,'formUrl','100%','100%','','','');
    viewForm = HtmlElementView(
      key: UniqueKey(), // Force rebuild when imageUrl changes
      viewType: 'formUrl',
    );

    fetchImageUrlAndRegisterView(context,setState,StringConst.CONTACTUSLOCATION,'locationUrl','100%','100%','none','','');
    location = HtmlElementView(
      key: UniqueKey(), // Force rebuild when imageUrl changes
      viewType: 'locationUrl',
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
  final _nameController = TextEditingController();
  final _phoneController = TextEditingController();
  final _mailController = TextEditingController();
  final _subController = TextEditingController();
  final _messageController = TextEditingController();
  bool _name = false;
  bool _phone = false;
  bool _mail = false;
  bool _subject = false;
  bool _message = false;


  Widget _buildUi(BuildContext context, double width, Color maincolor){

    return ResponsiveWrapper(
        maxWidth: width,
        minWidth: width,
        child:Padding(
          padding: const EdgeInsets.symmetric(vertical: 100),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(
                    width: width/2.5,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          StringConst.CONTACTUSFORMTITLE,
                          textAlign: TextAlign.center,
                          style: GoogleFonts.lato(
                            color: textcolor,
                            fontWeight: FontWeight.w600,
                            fontSize: 40,

                          ),
                        ),
                        SizedBox(height: 10,),
                        Text(
                          StringConst.CONTACTUSFORMDESC,
                          textAlign: TextAlign.start,
                          style: GoogleFonts.roboto(
                              color: desccolor,
                              fontWeight: FontWeight.w400,
                              fontSize: 16,
                              height: 1.5
                          ),
                        ),
                        SizedBox(height: 40,),
                        Row(
                        children: [

                          Expanded(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Name",
                                  textAlign: TextAlign.start,
                                  style: GoogleFonts.inter(
                                      color: textcolor,
                                      fontWeight: FontWeight.w500,
                                      fontSize: 16,
                                      height: 1.5
                                  ),
                                ),
                                SizedBox(height: 10,),
                                custom_textfield_onchange(setState,_nameController, '',(item) {
                                  setState(() {
                                    _name = false;
                                  });
                                }, (value) {
                                  if (value.isEmpty) {
                                    setState(() {
                                      _name = true;
                                    });
                                  }
                                  return null;
                                },50)
                              ],
                            ),
                          ),
                          SizedBox(width:15,),
                          Expanded(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Phone No. *",
                                  textAlign: TextAlign.start,
                                  style: GoogleFonts.inter(
                                      color: _phone == true?Colors.red:textcolor,
                                      fontWeight: FontWeight.w500,
                                      fontSize: 16,
                                      height: 1.5
                                  ),
                                ),
                                SizedBox(height: 10,),
                                custom_textfield_onchange(setState,_phoneController, '',(item) {
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
                                },50)
                              ],
                            ),
                          ),

                        ],
                          ),
                        SizedBox(height: 15,),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Email *",
                              textAlign: TextAlign.start,
                              style: GoogleFonts.inter(
                                  color: _mail == true?Colors.red:textcolor,
                                  fontWeight: FontWeight.w500,
                                  fontSize: 16,
                                  height: 1.5
                              ),
                            ),
                            SizedBox(height: 10,),
                            custom_textfield_onchange(setState,_mailController, '',(item) {
                              setState(() {
                                _mail = false;
                              });
                            }, (value) {
                              if (value.isEmpty) {
                                setState(() {
                                  _mail = true;
                                });
                              }
                              return null;
                            },50)
                          ],
                        ),
                        SizedBox(height: 15,),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Subject",
                              textAlign: TextAlign.start,
                              style: GoogleFonts.inter(
                                  color: textcolor,
                                  fontWeight: FontWeight.w500,
                                  fontSize: 16,
                                  height: 1.5
                              ),
                            ),
                            SizedBox(height: 10,),
                            custom_textfield_onchange(setState,_subController, '',(item) {
                              setState(() {
                                _subject = false;
                              });
                            }, (value) {
                              if (value.isEmpty) {
                                setState(() {
                                  _subject = true;
                                });
                              }
                              return null;
                            },50),
                            SizedBox(height: 15,),
                            Text(
                              "Message *",
                              textAlign: TextAlign.start,
                              style: GoogleFonts.inter(
                                  color: _message == true?Colors.red:textcolor,
                                  fontWeight: FontWeight.w500,
                                  fontSize: 16,
                                  height: 1.5
                              ),
                            ),
                            SizedBox(height: 10,),
                            custom_messagetextfield_onchange(setState,_messageController, '',(item) {
                              setState(() {
                                _message = false;
                              });
                            }, (value) {
                              if (value.isEmpty) {
                                setState(() {
                                  _message = true;
                                });
                              }
                              return null;
                            },),

                            SizedBox(height: 40,),
                            CustombannerButton("Submit", (){
                              setState(() {
                               /* if (_nameController.text.isEmpty) {
                                  setState(() {
                                    _name = true;
                                  });
                                }*/
                                if (_phoneController.text.isEmpty) {
                                  setState(() {
                                    _phone = true;
                                  });
                                }
                                if (_mailController.text.isEmpty) {
                                  setState(() {
                                    _mail = true;
                                  });
                                }
                                if (_messageController.text.isEmpty) {
                                  setState(() {
                                    _message = true;
                                  });
                                }
                                if (_phone ||
                                    _mail ||
                                    _message ) {
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

                            })


                          ],
                        ),

                      ],
                    ),
                  ),
                  SizedBox(width: 100,),
                  SizedBox(
                    height: 426,
                    width: 576,
                    child: viewForm,
                  ),
                ],
              ),
              SizedBox(height: 100,),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 70.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Container(
                          height: 72,
                          width: 72,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                              color:Color(0xFFFFCFCF)
                          ),
                          child:location,
                        ),
                        SizedBox(width: 15,),
                        SizedBox(

                          width: 380,
                          child: Text(StringConst.CONTACTUSADDRESS,
                            textAlign: TextAlign.start,
                            style: GoogleFonts.poppins(
                              color: textcolor,
                              fontWeight: FontWeight.w500,
                              fontSize: 16,

                            ),
                          ),
                        )
                      ],
                    ),
                    Row(
                      children: [
                        Container(
                          height: 72,
                          width: 72,
                          decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color:Color(0xFFFFCFCF)
                          ),
                          child:Icon(FontAwesomeIcons.solidEnvelope,color: maincolor,),
                        ),
                        SizedBox(width: 15,),
                        Text(StringConst.CONTACTUSMAIL,
                          textAlign: TextAlign.start,
                          style: GoogleFonts.poppins(
                            color: textcolor,
                            fontWeight: FontWeight.w500,
                            fontSize: 16,

                          ),
                        )
                      ],
                    ),
                    Row(
                      children: [
                        Container(
                          height: 72,
                          width: 72,
                          decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color:Color(0xFFFFCFCF)
                          ),
                          child:Icon(Icons.call,size: 30,color: maincolor,),
                        ),
                        SizedBox(width: 15,),
                        Text(StringConst.CONTACTUSPHONE,
                          textAlign: TextAlign.start,
                          style: GoogleFonts.lato(
                            color: textcolor,
                            fontWeight: FontWeight.w600,
                            fontSize: 16,

                          ),
                        )
                      ],
                    )
                  ],
                ),
              )
            ],
          ),
        )
    );
  }
}

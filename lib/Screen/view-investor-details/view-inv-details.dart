import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:newjeevantikacustomerswebsite/widgets/constants.dart';

import '../../widgets/text-field.dart';
import '../addCompany/add-company.dart';



void viewinvestorDetails(BuildContext context) {
  showDialog(
    context: context,

    barrierDismissible: false,
    builder: (BuildContext context) {
      return DialogviewInvestorDetail();
    },
  );
}

class DialogviewInvestorDetail extends StatefulWidget {
  @override
  _DialogviewInvestorDetailState createState() => _DialogviewInvestorDetailState();
}

class _DialogviewInvestorDetailState extends State<DialogviewInvestorDetail>
    with SingleTickerProviderStateMixin {
  final _security = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      contentPadding: EdgeInsets.zero,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(18.0), // Adjust the radius here
      ),
      content: Material(
        type: MaterialType.transparency,
        child: Stack(
          clipBehavior: Clip.none,
          children: [

            SingleChildScrollView(
              child: Container(
                width: 1100,
                child: Column(
                  children: [
                    Container(
                      height: 81,
                      padding: EdgeInsets.symmetric(horizontal: 30.0),
                     decoration: BoxDecoration(
                       color: footerBG,
                       borderRadius: BorderRadius.only(topRight: Radius.circular(18),
                       topLeft: Radius.circular(18))
                     ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Yash Saini",
                            style: GoogleFonts.lato(
                              color: Colors.white,
                              fontWeight: FontWeight.w500,
                              fontSize: 24,
                            ),
                          ),
                          Row(
                            children: [
                              ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                  backgroundColor: Colors.transparent,
                                  elevation: 0,
                                  foregroundColor: Colors.white,
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(30),
                                    side: BorderSide(color: Colors.white), // Optional: Add a border color if needed
                                  ),
                                ),
                                onPressed: (){
                                  Navigator.of(context).pop();
                                  addCompanyDetails(context);

                                }, child: Container(
                                height: 43,
                                width: 218,
                                child: Center(
                                  child: Text("+  Add new company",
                                    textAlign: TextAlign.center,style: GoogleFonts.lato(

                                      fontWeight: FontWeight.w500,
                                      fontSize: 16,

                                    ),),
                                ),
                              ),),
                              SizedBox(width: 20,),
                              IconButton(onPressed: (){}, icon: Icon(CupertinoIcons.star,color: Colors.white,size: 25,))
                            ],
                          )
                        ],
                      ),
                    ),
                    SizedBox(height: 10,),

                    Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: Column(
                        children: [
                          Row(
                            children: [
                              Expanded(
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "Security Code",
                                      textAlign: TextAlign.start,
                                      style: GoogleFonts.roboto(
                                          color: desccolor,
                                          fontWeight: FontWeight.w400,
                                          fontSize: 16,
                                          height: 1.5
                                      ),
                                    ),
                                    SizedBox(height: 10,),
                                    custom_textfield_disable(setState,_security, '',46)
                                  ],
                                ),
                              ),
                              SizedBox(width: 20,),
                              Expanded(
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "Company Name",
                                      textAlign: TextAlign.start,
                                      style: GoogleFonts.roboto(
                                          color: desccolor,
                                          fontWeight: FontWeight.w400,
                                          fontSize: 16,
                                          height: 1.5
                                      ),
                                    ),
                                    SizedBox(height: 10,),
                                    custom_textfield_disable(setState,_security, '',46)
                                  ],
                                ),
                              ),
                              SizedBox(width: 20,),
                              Expanded(
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "Investor Name",
                                      textAlign: TextAlign.start,
                                      style: GoogleFonts.roboto(
                                          color: desccolor,
                                          fontWeight: FontWeight.w400,
                                          fontSize: 16,
                                          height: 1.5
                                      ),
                                    ),
                                    SizedBox(height: 10,),
                                    custom_textfield_disable(setState,_security, '',46)
                                  ],
                                ),
                              )
                            ],
                          ),
                          SizedBox(height: 20,),
                          Row(
                            children: [
                              Expanded(
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "Father/Husband Name",
                                      textAlign: TextAlign.start,
                                      style: GoogleFonts.roboto(
                                          color: desccolor,
                                          fontWeight: FontWeight.w400,
                                          fontSize: 16,
                                          height: 1.5
                                      ),
                                    ),
                                    SizedBox(height: 10,),
                                    custom_textfield_disable(setState,_security, '',46)
                                  ],
                                ),
                              ),
                              SizedBox(width: 20,),
                              Expanded(
                                flex: 2,
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "Address",
                                      textAlign: TextAlign.start,
                                      style: GoogleFonts.roboto(
                                          color: desccolor,
                                          fontWeight: FontWeight.w400,
                                          fontSize: 16,
                                          height: 1.5
                                      ),
                                    ),
                                    SizedBox(height: 10,),
                                    custom_textfield_disable(setState,_security, '',46)
                                  ],
                                ),
                              ),

                            ],
                          ),
                          SizedBox(height: 20,),
                          Row(
                            children: [
                              Expanded(
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "Folio Number",
                                      textAlign: TextAlign.start,
                                      style: GoogleFonts.roboto(
                                          color: desccolor,
                                          fontWeight: FontWeight.w400,
                                          fontSize: 16,
                                          height: 1.5
                                      ),
                                    ),
                                    SizedBox(height: 10,),
                                    custom_textfield_disable(setState,_security, '',46)
                                  ],
                                ),
                              ),
                              SizedBox(width: 20,),
                              Expanded(
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "Dp ID client ID",
                                      textAlign: TextAlign.start,
                                      style: GoogleFonts.roboto(
                                          color: desccolor,
                                          fontWeight: FontWeight.w400,
                                          fontSize: 16,
                                          height: 1.5
                                      ),
                                    ),
                                    SizedBox(height: 10,),
                                    custom_textfield_disable(setState,_security, '',46)
                                  ],
                                ),
                              ),
                              SizedBox(width: 20,),
                              Expanded(
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "Number of Shares",
                                      textAlign: TextAlign.start,
                                      style: GoogleFonts.roboto(
                                          color: desccolor,
                                          fontWeight: FontWeight.w400,
                                          fontSize: 16,
                                          height: 1.5
                                      ),
                                    ),
                                    SizedBox(height: 10,),
                                    custom_textfield_disable(setState,_security, '',46)
                                  ],
                                ),
                              )
                            ],
                          ),
                          SizedBox(height: 20,),
                          Row(
                            children: [
                              Expanded(
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "Nominal value of shares",
                                      textAlign: TextAlign.start,
                                      style: GoogleFonts.roboto(
                                          color: desccolor,
                                          fontWeight: FontWeight.w400,
                                          fontSize: 16,
                                          height: 1.5
                                      ),
                                    ),
                                    SizedBox(height: 10,),
                                    custom_textfield_disable(setState,_security, '',46)
                                  ],
                                ),
                              ),
                              SizedBox(width: 20,),
                              Expanded(
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "Market price of shares",
                                      textAlign: TextAlign.start,
                                      style: GoogleFonts.roboto(
                                          color: desccolor,
                                          fontWeight: FontWeight.w400,
                                          fontSize: 16,
                                          height: 1.5
                                      ),
                                    ),
                                    SizedBox(height: 10,),
                                    custom_textfield_disable(setState,_security, '',46)
                                  ],
                                ),
                              ),
                              SizedBox(width: 20,),
                              Expanded(
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "Actual date of transfer of IEPF",
                                      textAlign: TextAlign.start,
                                      style: GoogleFonts.roboto(
                                          color: desccolor,
                                          fontWeight: FontWeight.w400,
                                          fontSize: 16,
                                          height: 1.5
                                      ),
                                    ),
                                    SizedBox(height: 10,),
                                    custom_textfield_disable(setState,_security, '',46)
                                  ],
                                ),
                              )
                            ],
                          ),
                          SizedBox(height: 20,),
                        ],
                      ),
                    )

                  ],
                ),
              ),
            ),

            Positioned(
              top: -25, // Adjust the position as needed
              right: -25,
              child: MouseRegion(
                cursor: SystemMouseCursors.click,
                child: GestureDetector(
                  onTap: () {
                    Navigator.of(context).pop();
                  },
                  child: Container(
                    height: 30,
                    width: 30,
                    decoration: BoxDecoration(
                        // color: Colors.red, // Temporarily add a background color for debugging
                      color: Colors.transparent,
                      shape: BoxShape.circle,
                      border: Border.all(color: Colors.white)
                    ),
                    child: Center(
                      child: Icon(
                        Icons.close,
                        color: Colors.white,
                        size: 15,
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

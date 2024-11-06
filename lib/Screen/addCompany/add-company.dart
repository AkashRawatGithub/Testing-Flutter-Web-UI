import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:newjeevantikacustomerswebsite/widgets/constants.dart';

import '../../widgets/text-field.dart';



void addCompanyDetails(BuildContext context) {
  showDialog(
    context: context,

    // barrierDismissible: false,
    builder: (BuildContext context) {
      return DialogviewAddCompany();
    },
  );
}

class DialogviewAddCompany extends StatefulWidget {
  @override
  _DialogviewAddCompanyState createState() => _DialogviewAddCompanyState();
}

class _DialogviewAddCompanyState extends State<DialogviewAddCompany>
    with SingleTickerProviderStateMixin {
  final _security = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      backgroundColor: Colors.transparent,
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
                width: 1200,
                color: Colors.white.withOpacity(.005),
                child: Padding(
                  padding: const EdgeInsets.all(50.0),
                  child: Container(
                   
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(topRight: Radius.circular(18),topLeft: Radius.circular(18))
                    ),
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
                                "Add Account",
                                style: GoogleFonts.lato(
                                  color: Colors.white,
                                  fontWeight: FontWeight.w500,
                                  fontSize: 24,
                                ),
                              ),

                            ],
                          ),
                        ),
                        SizedBox(height: 10,),

                        Padding(
                          padding: const EdgeInsets.all(20.0),
                          child: Column(
                            children: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Stack(
                                    children: [
                                      Container(
                                        width:1050,
                                        height: 63,
                                      ),
                                      Positioned(
                                        left: 690,
                                        child: ClipPath(
                                          clipper: LinearEdgeClipper(),
                                          child: Container(

                                            width: 401,
                                            height: 63,
                                            color: TABcolor,
                                            child: Center(child: Text('STEP 3',style: TextStyle(color: Colors.white),)),
                                          ),
                                        ),
                                      ),
                                      Positioned(
                                        left: 350,
                                        child: ClipPath(
                                          clipper: LinearEdgeClipper(),
                                          child: Container(

                                            decoration: BoxDecoration(
                                                color: TABcolor,
                                                boxShadow: [BoxShadow(
                                                  color: Colors.black,
                                                  blurRadius:3.0,
                                                ),]
                                            ),
                                            width: 401,
                                            height: 63,

                                            child: Center(child: Text('STEP 1',style: TextStyle(color: Colors.white),)),
                                          ),
                                        ),
                                      ),
                                      ClipPath(
                                        clipper: LinearEdgeClipper(),
                                        child: Container(
                                          width: 401,
                                          height: 63,
                                          decoration: BoxDecoration(
                                              color: maincolor,
                                              boxShadow: [BoxShadow(
                                                color: Colors.black,
                                                blurRadius:3.0,
                                              ),]
                                          ),
                                          child: Center(child: Text('STEP 1',style: TextStyle(color: Colors.white),)),
                                        ),
                                      ),

                                    ],
                                  ),
                                ],
                              ),



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
                            ],
                          ),
                        )

                      ],
                    ),
                  ),
                ),
              ),
            ),

            Positioned(
              top: -5, // Adjust the position as needed
              right: -5,
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
class LinearEdgeClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Path path = Path();
    path.moveTo(0, 0);
    path.lineTo(size.width - 40, 0); // Move to near the right edge, slightly inwards
    path.lineTo(size.width, size.height / 2); // Move to the middle of the right edge
    path.lineTo(size.width - 40, size.height); // Move to near the bottom right, slightly inwards
    path.lineTo(0, size.height);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    return false; // No need to reclip since the path is static
  }
}
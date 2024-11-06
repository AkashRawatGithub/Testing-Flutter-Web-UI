
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';

import 'constants.dart';

ourServicesCards(width,title,description, view){
  return Padding(
    padding: EdgeInsets.symmetric(horizontal: width > 1300 ? 30: width >1200? 10  :10,vertical: 10),
    child: Card(
      elevation: 5,
      shadowColor: Colors.black.withOpacity(.4),
      borderOnForeground: true,
      shape: RoundedRectangleBorder( //<-- SEE HERE
          borderRadius: BorderRadius.circular(12.0)
      ),
      clipBehavior: Clip.antiAlias,
      child: Column(
        children: [
          SizedBox(height: 12,),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: SizedBox(
              height: 152,
              width: width,
              child: view,),
          ),
          SizedBox(height: 5,),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: ListTile(
              title: Padding(
                padding: const EdgeInsets.only(bottom: 12.0),
                child: Text(
                  title,
                  textAlign: TextAlign.center,
                  style: GoogleFonts.rajdhani(
                    color: textcolor,
                    fontWeight: FontWeight.w600,
                    fontSize: width >1199?24 :18,
                  ),
                ),
              ),
              subtitle: Text(
                description,
                textAlign: TextAlign.center,
                style: GoogleFonts.inter(
                  color: desccolor,
                  fontWeight: FontWeight.w400,
                  height: 1.7,
                  fontSize: width >1199?16 :14,
                ),
              ),
            ),
          ),


        ],
      ),
    ),
  );
}

testimonialCards(width,title,occupation, msg, view){
  return Padding(
    padding: EdgeInsets.symmetric(horizontal: width > 1300 ? 180: width >1200? 10  :10,vertical: 10),
    child: Stack(
      children: [

        Padding(
          padding: const EdgeInsets.only(top: 80.0),
          child: SizedBox(

            child: Card(
              elevation: 5,
              shadowColor: Colors.black.withOpacity(.4),
              borderOnForeground: true,
              shape: RoundedRectangleBorder( //<-- SEE HERE
                  borderRadius: BorderRadius.circular(12.0)
              ),
              clipBehavior: Clip.antiAlias,
              child: Column(
                children: [
                  SizedBox(height: 100,),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 30.0,vertical: 10),
                    child: ListTile(
                      title: Padding(
                        padding: const EdgeInsets.only(bottom: 5.0),
                        child: Text(
                          title,
                          textAlign: TextAlign.center,
                          style: GoogleFonts.inter(
                            color: textcolor,
                            fontWeight: FontWeight.w600,
                            fontSize: width >1199?22 :18,
                          ),
                        ),
                      ),
                      subtitle: Column(
                        children: [
                          Text(
                            occupation,
                            textAlign: TextAlign.center,
                            style: GoogleFonts.inter(
                              color: testimonalOccColor,
                              fontWeight: FontWeight.w400,
                              height: 1,
                              fontSize: width >1199?16 :14,
                            ),
                          ),
                          
                          Column(
                            children: [
                              Row(
                                children: [
                                  Icon(FontAwesomeIcons.quoteLeft),
                                ],
                              ),
                              SizedBox(
                                width: width/2,
                                child: Text(
                                  msg,
                                  textAlign: TextAlign.center,
                                  style: GoogleFonts.inter(
                                    color: desccolor,
                                    fontWeight: FontWeight.w400,
                                    height: 1.7,
                                    fontSize: width >1199?16 :14,
                                  ),
                                ),
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  Icon(FontAwesomeIcons.quoteRight),
                                ],
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),


                ],
              ),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                height: 172,
                width: 172,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.white,
                  border: Border.all(color: searchshareBackground,width: 6)
                ),
                child: view,),
            ],
          ),
        ),
      ],
    ),
  );
}

TeamMemberCards(width, name, occupation, desc, img) {
  bool _isHovered = false;

  return StatefulBuilder(
    builder: (BuildContext context, StateSetter setState) {
      return MouseRegion(
        onEnter: (_) => setState(() => _isHovered = true),
        onExit: (_) => setState(() => _isHovered = false),
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: width > 1300 ? 45 : width > 1200 ? 10 : 10, vertical: 30),
          child: AnimatedContainer(
            duration: Duration(milliseconds: 300),
            transform: _isHovered ? (Matrix4.identity()..scale(1.05)) : Matrix4.identity(),
            child: Card(

              color: _isHovered ?teamnameColor:teamCardBG,
              elevation: 5,
              shadowColor: Colors.black.withOpacity(.4),
              borderOnForeground: true,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(14.0),
              ),
              clipBehavior: Clip.antiAlias,
              child: Padding(
                padding: const EdgeInsets.all(18.0),
                child: Column(
                  children: [
                    Container(
                      height: 141,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.only(topLeft: Radius.circular(13), topRight: Radius.circular(13)),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.only(top: 8.0),
                        child: img,
                      ),
                    ),
                    SizedBox(height: 10),
                    ListTile(
                      title: Padding(
                        padding: const EdgeInsets.only(bottom: 5.0),
                        child: Text(
                          occupation,
                          textAlign: TextAlign.center,
                          style: GoogleFonts.lato(
                            color: _isHovered ?Colors.white:teamnameColor,
                            fontWeight: FontWeight.w500,
                            fontSize: width > 1199 ? 16 : 14,
                          ),
                        ),
                      ),
                      subtitle: Column(
                        children: [
                          Text(
                            name,
                            textAlign: TextAlign.center,
                            style: GoogleFonts.roboto(
                              color: _isHovered ?Colors.white:teamnameColor,
                              fontWeight: FontWeight.w400,
                              height: 1.4,
                              fontSize: width > 1199 ? 14 : 12,
                            ),
                          ),
                          SizedBox(height: 8),
                          Column(
                            children: [
                              SizedBox(
                                width: width / 2,
                                child: Text(
                                  desc,
                                  textAlign: TextAlign.center,
                                  style: GoogleFonts.roboto(
                                    color: _isHovered ?Colors.white:desccolor,
                                    fontWeight: FontWeight.w400,
                                    height: 1.7,
                                    fontSize: width > 1199 ? 14 : 12,
                                  ),
                                ),
                              ),
                              SizedBox(height: 10),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: MouseRegion(
                                      cursor: MaterialStateMouseCursor.clickable,
                                      child: GestureDetector(
                                        child: Row(
                                          children: [
                                            Container(
                                              height: 35,
                                              width: 35,
                                              decoration: BoxDecoration(
                                                color: _isHovered ?Colors.white:footerBG,
                                                shape: BoxShape.circle,
                                              ),
                                              child: Center(
                                                child: Icon(
                                                  FontAwesomeIcons.instagram,
                                                  size: 18,
                                                  color: _isHovered ?footerBG:Colors.white,
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: MouseRegion(
                                      cursor: MaterialStateMouseCursor.clickable,
                                      child: GestureDetector(
                                        child: Row(
                                          children: [
                                            Container(
                                              height: 35,
                                              width: 35,
                                              decoration: BoxDecoration(
                                                color: _isHovered ?Colors.white:footerBG,
                                                shape: BoxShape.circle,
                                              ),
                                              child: Center(
                                                child: Icon(
                                                  FontAwesomeIcons.linkedinIn,
                                                  size: 18,
                                                  color: _isHovered ?footerBG:Colors.white,
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Row(
                                      children: [
                                        Container(
                                          height: 35,
                                          width: 35,
                                          decoration: BoxDecoration(
                                            color: _isHovered ?Colors.white:footerBG,
                                            shape: BoxShape.circle,
                                          ),
                                          child: Center(
                                            child: Icon(
                                              FontAwesomeIcons.twitter,
                                              size: 18,
                                              color: _isHovered ?footerBG:Colors.white,
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Row(
                                      children: [
                                        Container(
                                          height: 35,
                                          width: 35,
                                          decoration: BoxDecoration(
                                            color: _isHovered ?Colors.white:footerBG,
                                            shape: BoxShape.circle,
                                          ),
                                          child: Center(
                                            child: Icon(
                                              FontAwesomeIcons.facebookF,
                                              size: 18,
                                              color: _isHovered ?footerBG:Colors.white,
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      );
    },
  );
}




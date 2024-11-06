import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../Values/values.dart';
import 'constants.dart';

CustombannerButton(text, ontap){
  return  ElevatedButton(
    style: ElevatedButton.styleFrom(
        primary: bannerbtn, // Background color
        onPrimary: Colors.white, // Text color
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(30)

        )
    ),
    onPressed: ontap, child: Container(
    height: 43,
    width: 168,
    child: Center(
      child: Text(text,
        textAlign: TextAlign.center,style: GoogleFonts.lato(

          fontWeight: FontWeight.w500,
          fontSize: 16,

        ),),
    ),
  ),);
}

CustomTexticonButton(text, ontap,height,width,radious,size){
  return  ElevatedButton(
    style: ElevatedButton.styleFrom(
        primary: bannerbtn, // Background color
        onPrimary: Colors.white, // Text color
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(radious)

        )
    ),
    onPressed: ontap, child: Container(
    height: height,
    width: width,
    child: Row(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Text(text,
          textAlign: TextAlign.center,style: GoogleFonts.roboto(
            fontWeight: FontWeight.w500,
            fontSize: size,
          ),),
        SizedBox(width: 10,),
        Icon(Icons.arrow_forward_ios, size: 15,)
      ],
    ),
  ),);
}

CustomLoginButton(text, ontap){
  return  ElevatedButton(
    style: ElevatedButton.styleFrom(
        primary: bannerbtn, // Background color
        onPrimary: Colors.white, // Text color
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(30)

        )
    ),
    onPressed: ontap, child: Container(
    height: 43,
    width: 197,
    child: Center(
      child: Text(text,
        textAlign: TextAlign.center,style: GoogleFonts.lato(

          fontWeight: FontWeight.w500,
          fontSize: 16,

        ),),
    ),
  ),);
}
CustomVerifyButton(text, ontap){
  return  ElevatedButton(
    style: ElevatedButton.styleFrom(
        primary: bannerbtn, // Background color
        onPrimary: Colors.white, // Text color
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(30)

        )
    ),
    onPressed: ontap, child: Container(
    height: 43,
    width: 310,
    child: Center(
      child: Text(text,
        textAlign: TextAlign.center,style: GoogleFonts.lato(

          fontWeight: FontWeight.w500,
          fontSize: 16,

        ),),
    ),
  ),);
}

CustomRegButton(text, ontap){
  return  ElevatedButton(
    style: ElevatedButton.styleFrom(
        primary: bannerbtn, // Background color
        onPrimary: Colors.white, // Text color
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(30)

        )
    ),
    onPressed: ontap, child: Container(
    height: 43,
    width: 310,
    child: Center(
      child: Text(text,
        textAlign: TextAlign.center,style: GoogleFonts.lato(

          fontWeight: FontWeight.w500,
          fontSize: 16,

        ),),
    ),
  ),);
}
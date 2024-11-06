import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';

import 'constants.dart';

custom_textfield_onchange(setState,controllers, hint,dematno,validate, height) {
  return Container(
    height: height,
    child: TextFormField(
      onChanged: dematno,
      validator: validate,
      enabled: true,
      readOnly:false,
      style: GoogleFonts.poppins(
        color: textcolor,
        fontSize: 12,
        fontWeight: FontWeight.w500,
      ),
      controller: controllers,
      decoration: InputDecoration(
        filled:false,
        fillColor: Colors.transparent,
        contentPadding: EdgeInsets.fromLTRB(10, 0, 0, 0),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(color: maincolor),
        ),
        hintText: hint,
        hintStyle: GoogleFonts.poppins(
          color: Colors.grey.shade400,
          fontSize: 12,
          fontWeight: FontWeight.w500,
        ),
        border: OutlineInputBorder(
          borderSide: BorderSide(color: maincolor),
          borderRadius: const BorderRadius.all(Radius.circular(5)),
        ),
      ),
    ),
  );
}

custom_messagetextfield_onchange(setState,controllers, hint,dematno,validate) {
  return Container(
    // height: 110,
    child: TextFormField(
      onChanged: dematno,
      validator: validate,
      enabled: true,
      readOnly:false,
      keyboardType: TextInputType.multiline,
      maxLines: 6,
      style: GoogleFonts.poppins(
        color: textcolor,
        fontSize: 12,
        fontWeight: FontWeight.w500,
      ),
      controller: controllers,
      decoration: InputDecoration(
        filled:false,
        fillColor: Colors.transparent,
        contentPadding: EdgeInsets.fromLTRB(10, 10, 10, 10),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(color: maincolor),
        ),
        hintText: hint,
        hintStyle: GoogleFonts.poppins(
          color: Colors.grey.shade400,
          fontSize: 12,
          fontWeight: FontWeight.w500,
        ),
        border: OutlineInputBorder(
          borderSide: BorderSide(color: maincolor),
          borderRadius: const BorderRadius.all(Radius.circular(5)),
        ),
      ),
    ),
  );
}

custom_textfield_onchange_numbers(setState,controllers, hint,dematno,validate, height) {
  return Container(
    height: height,
    child: TextFormField(
      keyboardType: TextInputType.number,
      inputFormatters: <TextInputFormatter>[
        FilteringTextInputFormatter.digitsOnly,
      ],
      maxLength: 10,

      onChanged: dematno,
      validator: validate,
      enabled: true,
      readOnly:false,
      style: GoogleFonts.lato(
        color: textcolor,
        fontSize: 14,
        fontWeight: FontWeight.w500,
      ),
      controller: controllers,
      decoration: InputDecoration(
        filled:false,
        fillColor: Colors.transparent,
        contentPadding: EdgeInsets.fromLTRB(10, 0, 0, 0),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(color: maincolor),
        ),
        hintText: hint,
        hintStyle: GoogleFonts.lato(
          color: Colors.grey.shade400,
          fontSize: 14,
          fontWeight: FontWeight.w500,
        ),
        border: OutlineInputBorder(
          borderSide: BorderSide(color: maincolor),
          borderRadius: const BorderRadius.all(Radius.circular(5)),
        ),
        counterText: '',
      ),
    ),
  );
}


custom_textfield_onchange_password(setState,controllers, hint,dematno,validate, height,_iconvisibile,onpresseye) {
  return Container(
    height: height,
    child: TextFormField(
      onChanged: dematno,
      validator: validate,
      obscureText: _iconvisibile,
      enabled: true,
      readOnly:false,
      style: GoogleFonts.lato(
        color: textcolor,
        fontSize: 14,
        fontWeight: FontWeight.w500,
      ),
      controller: controllers,
      decoration: InputDecoration(
        filled:false,
        fillColor: Colors.transparent,

        contentPadding: EdgeInsets.fromLTRB(10, 0, 0, 0),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(color: maincolor),
        ),
        hintText: hint,
        hintStyle: GoogleFonts.lato(
          color: Colors.grey.shade400,
          fontSize: 14,
          fontWeight: FontWeight.w500,
        ),
        border: OutlineInputBorder(
          borderSide: BorderSide(color: maincolor),
          borderRadius: const BorderRadius.all(Radius.circular(5)),
        ),
        suffixIcon: Padding(
          padding: const EdgeInsets.only(right: 25.0),
          child: IconButton(
            icon: Icon(
              _iconvisibile ? Icons.visibility : Icons.visibility_off,
              color: Color(0xFF7E7E7E),
            ),
            onPressed: onpresseye,
          ),
        ),

      ),
    ),
  );
}

custom_textfield_searchbar(setState,controllers, hint,dematno,validate, height) {
  return Container(
    height: height,
    decoration: BoxDecoration(
      color: Colors.white,
      borderRadius: BorderRadius.circular(5)
    ),

    child: TextFormField(
      onChanged: dematno,
      validator: validate,
      enabled: true,
      readOnly:false,
      style: GoogleFonts.poppins(
        color: textcolor,
        fontSize: 12,
        fontWeight: FontWeight.w500,
      ),
      controller: controllers,
      decoration: InputDecoration(
        filled:false,
        fillColor: Colors.white,
        contentPadding: EdgeInsets.fromLTRB(10, 0, 0, 0),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(color: maincolor),
        ),
        hintText: hint,
        hintStyle: GoogleFonts.poppins(
          color: Colors.grey.shade400,
          fontSize: 12,
          fontWeight: FontWeight.w500,
        ),
        border: OutlineInputBorder(
          borderSide: BorderSide(color: maincolor),
          borderRadius: const BorderRadius.all(Radius.circular(5)),
        ),
      ),
    ),
  );
}

custom_textfield_disable(setState,controllers, hint,height) {
  return Container(
    height: height,
    decoration: BoxDecoration(
        color: maincolor.withOpacity(.1),
        borderRadius: BorderRadius.circular(5)
    ),

    child: TextFormField(

      enabled: true,
      readOnly:true,
      style: GoogleFonts.poppins(
        color: textcolor,
        fontSize: 12,
        fontWeight: FontWeight.w500,
      ),
      controller: controllers,
      decoration: InputDecoration(
        filled:false,
        fillColor: Colors.white,
        contentPadding: EdgeInsets.fromLTRB(10, 0, 0, 0),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(color: maincolor),
        ),
        hintText: hint,
        hintStyle: GoogleFonts.poppins(
          color: Colors.grey.shade400,
          fontSize: 12,
          fontWeight: FontWeight.w500,
        ),
        border: OutlineInputBorder(
          borderSide: BorderSide(color: maincolor),
          borderRadius: const BorderRadius.all(Radius.circular(5)),
        ),
      ),
    ),
  );
}
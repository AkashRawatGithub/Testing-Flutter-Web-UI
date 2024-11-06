import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';


class Error_page extends StatelessWidget {
  const Error_page({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Icon(Icons.error_outline,color: Colors.grey,size: 200,),
              Text("404", style: GoogleFonts.poppins(
                color: Colors.grey,
                fontWeight: FontWeight.w500,
                fontSize: 110,
              ),),
              Text("The page you are looking for doesn't exist or an other error occurred.", style: GoogleFonts.poppins(
                color: Colors.grey,
                fontWeight: FontWeight.w500,
                fontSize: 12,
              ),)
            ],
          ),
        ],
      ),
    );
  }
}

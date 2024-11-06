import 'dart:html';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../Values/values.dart';
import '../routes/urlroute.dart';
import '../widgets/constants.dart';

class Navbar extends StatefulWidget {
  const Navbar({Key? key}) : super(key: key);

  @override
  State<Navbar> createState() => _NavbarState();
}


class _NavbarState extends State<Navbar> {

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 8.0),
      child: Row(

        children: [
          SizedBox(),
          Padding(
            padding: const EdgeInsets.only(top: 65.0),
            child: Container(
              width: 50,
              decoration: BoxDecoration(
                  border: Border(
                    bottom: BorderSide(color: footerBG,width: 1),
                  )
              ),
            ),
          ),
          Stack(
            children: [
              Container(
                decoration: BoxDecoration(
                  color: footerBG,
                  borderRadius: BorderRadius.only(topLeft: Radius.circular(5),topRight: Radius.circular(5))
                ),
                height: 5,width: 325,),

              Padding(
                padding: const EdgeInsets.only(top: 4.0,bottom: 5),
                child: ElevatedButton(
                  style: ButtonStyle(
                    elevation: MaterialStateProperty.all(0),
                    backgroundColor: MaterialStateProperty.all(Colors.transparent),
                    padding: MaterialStateProperty.all(EdgeInsets.zero),

                  ),
                  onPressed: (){
                    setState(() {
                      Navigator.pushNamed(
                          context, RoutesName.DASHBOARD);
                    });
                  },
                  child: Container(
                    width: 325,
                    height: 68,

                    decoration: BoxDecoration(
                      border: Border(
                        top: BorderSide(color: footerBG),
                        right: BorderSide(color: footerBG),
                        left: BorderSide(color: footerBG),
                        bottom: BorderSide.none
                      ),
                      // borderRadius: BorderRadius.only(topRight: Radius.circular(5),topLeft: Radius.circular(5))
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Image.asset('assets/searchInv.png',width: 37,height: 34,color: maincolor,),
                        SizedBox(width: 5,),
                        Text(
                          DashboardStringConst.Navitem1,
                          textAlign: TextAlign.center,
                          style: GoogleFonts.roboto(
                            color: maincolor,
                            fontWeight: FontWeight.w500,
                            fontSize: 22,
                          ),
                        ),
                      ],
                    ),
                  ),),
              ),
            ],
          ),
          Container(
            decoration: BoxDecoration(
                border: Border(
                  bottom: BorderSide(color: footerBG,width: 1),
                )
              /* border: Border(
                              bottom: BorderSide(color: Colors.white,width: 5),
                            )*/
            ),
            child: ElevatedButton(
              style: ButtonStyle(
                elevation: MaterialStateProperty.all(0),
                backgroundColor: MaterialStateProperty.all(Colors.white),
                padding: MaterialStateProperty.all(EdgeInsets.zero),

              ),
              onPressed: (){},
              child: Container(
                width: 325,
                height: 68,

                decoration: BoxDecoration(
                  /*border: Border(
                                  left: BorderSide(),right: BorderSide(),top:BorderSide(width: 1),
                                )*/
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Image.asset('assets/addCompany.png'),
                    SizedBox(width: 5,),
                    Text(
                      DashboardStringConst.Navitem2,
                      textAlign: TextAlign.center,
                      style: GoogleFonts.roboto(
                        color: textcolor,
                        fontWeight: FontWeight.w500,
                        fontSize: 22,
                      ),
                    ),
                  ],
                ),
              ),),
          ),
          Container(
            decoration: BoxDecoration(
                border: Border(
                  bottom: BorderSide(color: footerBG,width: 1),
                )
            ),
            child: ElevatedButton(
              style: ButtonStyle(
                elevation: MaterialStateProperty.all(0),
                backgroundColor: MaterialStateProperty.all(Colors.white),
                padding: MaterialStateProperty.all(EdgeInsets.zero),

              ),
              onPressed: (){},
              child: Container(
                width: 325,
                height: 68,

                decoration: BoxDecoration(
                  /* border: Border(
                                  left: BorderSide(),right: BorderSide(),top:BorderSide(width: 5),
                                )*/
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Image.asset('assets/claimshare.png'),
                    SizedBox(width: 5,),
                    Text(
                      DashboardStringConst.Navitem3,
                      textAlign: TextAlign.center,
                      style: GoogleFonts.roboto(
                        color: textcolor,
                        fontWeight: FontWeight.w500,
                        fontSize: 22,
                      ),
                    ),
                  ],
                ),
              ),),
          ),
          Expanded(

            child: Padding(
              padding: const EdgeInsets.only(top: 68.0),
              child: Container(
                decoration: BoxDecoration(
                    border: Border(
                      bottom: BorderSide(color: footerBG,width: 1),
                    )
                ),
              ),
            ),
          ),

        ],
      ),
    );
  }
}

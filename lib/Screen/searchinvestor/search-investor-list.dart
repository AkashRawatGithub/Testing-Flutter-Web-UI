import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:newjeevantikacustomerswebsite/widgets/constants.dart';
import 'package:google_fonts/google_fonts.dart';

import '../view-investor-details/view-inv-details.dart';

class SearchinvList extends StatefulWidget {
  const SearchinvList({Key? key}) : super(key: key);

  @override
  State<SearchinvList> createState() => _SearchinvListState();
}

class _SearchinvListState extends State<SearchinvList> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0),
      child: Column(
        children: [
          SizedBox(height: 50,),
          Container(
            height: 58,
            decoration: BoxDecoration(
              color: teamnameColor,
              borderRadius: BorderRadius.only(topLeft: Radius.circular(7),topRight: Radius.circular(7)),
            ),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment:
                CrossAxisAlignment.center,
                children: [
                  Expanded(
                    child: Center(
                      child: Text(
                        "Investor name",
                        style: GoogleFonts.roboto(
                          color: Colors.white,
                          fontWeight: FontWeight.w500,
                          fontSize: 18,
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    child: Center(
                      child: Text(
                        "Father/Husband",
                        style: GoogleFonts.roboto(
                          color: Colors.white,
                          fontWeight: FontWeight.w500,
                          fontSize: 18,
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    child: Center(
                      child: Text(
                        "Company name",
                        style: GoogleFonts.roboto(
                          color: Colors.white,
                          fontWeight: FontWeight.w500,
                          fontSize: 18,
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    child: Center(
                      child: Text(
                        "Number of shares",
                        style: GoogleFonts.roboto(
                          color: Colors.white,
                          fontWeight: FontWeight.w500,
                          fontSize: 18,
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    child: Center(
                      child: Text(
                        "Actions",
                        style: GoogleFonts.roboto(
                          color: Colors.white,
                          fontWeight: FontWeight.w500,
                          fontSize: 18,
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
          Container(
            // height: 59.0 * 14,
            height:500,
            decoration: BoxDecoration(
              border: Border.all( color: teamnameColor.withOpacity(.5),)
            ),
            child: ListView.builder(
                itemCount: 18,
                shrinkWrap: true,
                itemBuilder: (context, index) {
                  return Container(
                    height: 59,
                    decoration: BoxDecoration(
                        color: index % 2 == 0
                            ? Colors.white
                            :  teamnameColor.withOpacity(.10),
                        border: Border(
                            bottom: BorderSide(
                                color: teamnameColor.withOpacity(.5),
                                width: 1))),
                    child: Row(
                      mainAxisAlignment:
                      MainAxisAlignment.center,
                      crossAxisAlignment:
                      CrossAxisAlignment.center,
                      children: [
                        Expanded(
                          child: Center(
                            child: Text(
                             "name",
                              style: GoogleFonts.roboto(
                                color: textcolor,
                                fontWeight: FontWeight.w600,
                                fontSize: 14,
                              ),
                            ),
                          ),
                        ),
                        Expanded(
                          child: Center(
                            child: Text(
                              "fname",
                              style: GoogleFonts.roboto(
                                color: textcolor,
                                fontWeight: FontWeight.w600,
                                fontSize: 14,
                              ),
                            ),
                          ),
                        ),
                        Expanded(
                          child: Center(
                            child: Text(
                              'company name',
                              style: GoogleFonts.roboto(
                                color: textcolor,
                                fontWeight: FontWeight.w600,
                                fontSize: 14,
                              ),
                            ),
                          ),
                        ),
                        Expanded(
                          child: Center(
                            child: Text(
                              "no of share",
                              style: GoogleFonts.roboto(
                                color: textcolor,
                                fontWeight: FontWeight.w600,
                                fontSize: 14,
                              ),
                            ),
                          ),
                        ),
                        Expanded(
                          child: Row(
                            mainAxisAlignment:
                            MainAxisAlignment.center,
                            crossAxisAlignment:
                            CrossAxisAlignment.center,
                            children: [
                              MouseRegion(
                                cursor:
                                MaterialStateMouseCursor
                                    .clickable,
                                child: GestureDetector(
                                  onTap: () {
                                    setState(() {
                                      viewinvestorDetails(context);
                                    });
                                  },
                                  child: Padding(
                                    padding:
                                    const EdgeInsets
                                        .all(8.0),
                                    child: Icon(
                                      CupertinoIcons.eye_fill,
                                      color: teamnameColor,
                                      size: 18,
                                    ),
                                  ),
                                ),
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                  );
                }),
          ),
          SizedBox(height: 50,),
        ],
      ),
    );
  }
}

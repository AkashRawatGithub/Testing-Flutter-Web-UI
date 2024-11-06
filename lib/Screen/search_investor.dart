import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:newjeevantikacustomerswebsite/Screen/searchinvestor/search-investor-list.dart';

import '../Values/values.dart';
import '../widgets/constants.dart';
import '../widgets/text-field.dart';


class SearchInvestor extends StatefulWidget {
  const SearchInvestor({Key? key}) : super(key: key);

  @override
  State<SearchInvestor> createState() => _SearchInvestorState();
}

class _SearchInvestorState extends State<SearchInvestor> {

  final _nameController = TextEditingController();
  final _phoneController = TextEditingController();
  bool _name = false;
  bool _phone = false;
  bool search = false;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(
          height: 25,
        ),
        Padding(
          padding: const EdgeInsets.only(left: 50),
          child: Text(
            DashboardStringConst.SearchShares,
            textAlign: TextAlign.start,
            style: GoogleFonts.lato(
                color: textcolor,
                fontWeight: FontWeight.w700,
                fontSize: 28,
                height: 1.5
            ),
          ),
        ),
        SizedBox(
          height: 30,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 50.0),
          child: Row(
            children: [

              Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Search name *",
                      textAlign: TextAlign.start,
                      style: GoogleFonts.roboto(
                          color: desccolor,
                          fontWeight: FontWeight.w400,
                          fontSize: 16,
                          height: 1.5
                      ),
                    ),
                    SizedBox(height: 10,),
                    custom_textfield_searchbar(setState,_nameController, 'Search name  ',(item) {
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
                    },46)
                  ],
                ),
              ),
              SizedBox(width:20,),
              Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Select State *",
                      textAlign: TextAlign.start,
                      style: GoogleFonts.inter(
                          color: _phone == true?Colors.red:desccolor,
                          fontWeight: FontWeight.w400,
                          fontSize: 16,
                          height: 1.5
                      ),
                    ),
                    SizedBox(height: 10,),
                    custom_textfield_searchbar(setState,_phoneController, '',(item) {
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
                    },46)
                  ],
                ),
              ),
              SizedBox(width:20,),
              Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Select Company (optional)",
                      textAlign: TextAlign.start,
                      style: GoogleFonts.inter(
                          color: desccolor,
                          fontWeight: FontWeight.w400,
                          fontSize: 16,
                          height: 1.5
                      ),
                    ),
                    SizedBox(height: 10,),
                    custom_textfield_searchbar(setState,_nameController, '',(item) {
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
                    },46)
                  ],
                ),
              ),
              SizedBox(width:20,),
              Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Location (optional)",
                      textAlign: TextAlign.start,
                      style: GoogleFonts.inter(
                          color: _phone == true?Colors.red:desccolor,
                          fontWeight: FontWeight.w400,
                          fontSize: 16,
                          height: 1.5
                      ),
                    ),
                    SizedBox(height: 10,),
                    custom_textfield_searchbar(setState,_phoneController, '',(item) {
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
                    },46)
                  ],
                ),
              ),
              SizedBox(width:20,),
              Padding(
                padding: const EdgeInsets.only(top: 30.0),
                child: Container(
                  height: 46,
                  width: 46,
                  decoration: BoxDecoration(
                      color: bannerbtn,
                      borderRadius: BorderRadius.circular(5)
                  ),

                  child: IconButton(
                      onPressed: (){
                        setState(() {
                          search=true;
                        });
                      }, icon: Icon(
                    Icons.search,color: Colors.white,
                  )),
                ),
              )

            ],
          ),
        ),

        search==true?SearchinvList():searchLimitCard(),
      ],
    );
  }
  searchLimitCard(){
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 50.0,vertical: 100),
      child: Container(
        height: 185,
        decoration: BoxDecoration(
            border: Border.all(color: SearchInv),
            borderRadius: BorderRadius.circular(14)
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 150.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Daily Search Limit 10/10",
                    textAlign: TextAlign.start,
                    style: GoogleFonts.roboto(
                        color: maincolor.withOpacity(.53),
                        fontWeight: FontWeight.w400,
                        fontSize: 23,
                        height: 1.5
                    ),
                  ),
                  Text(
                    "Monthly Search Limit 22/150",
                    textAlign: TextAlign.start,
                    style: GoogleFonts.roboto(
                        color: maincolor.withOpacity(.53),
                        fontWeight: FontWeight.w400,
                        fontSize: 23,
                        height: 1.5
                    ),
                  ),
                ],
              ),
              Image.asset("assets/searchLimit.png")

            ],
          ),
        ),
      ),
    );
  }
}

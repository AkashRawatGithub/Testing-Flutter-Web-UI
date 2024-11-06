import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:responsive_framework/responsive_wrapper.dart';

import '../../Values/values.dart';
import '../../widgets/constants.dart';
import '../../widgets/getimage.dart';
import '../../widgets/screen_helper.dart';

class PricingcardSection extends StatefulWidget {

  const PricingcardSection({Key? key}) : super(key: key);

  @override
  State<PricingcardSection> createState() => _PricingcardSectionState();
}

class _PricingcardSectionState extends State<PricingcardSection> {
  var viewWtwedo;
  bool _isHovered = false;
  int? currentIndex;

  @override
  void initState() {
    super.initState();
    fetchImageUrlAndRegisterView(context,setState,StringConst.ABOUTUSWTWEDO,'wtwedoUrl','100%','100%','','','');
    viewWtwedo = HtmlElementView(
      key: UniqueKey(), // Force rebuild when imageUrl changes
      viewType: 'wtwedoUrl',
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

  Widget _buildUi(BuildContext context, double width, Color maincolor){
    return ResponsiveWrapper(
        maxWidth: width,
        minWidth: width,
        child:Padding(
          padding: const EdgeInsets.only(top: 100, bottom: 20),
          child: Column(
            children: [
              Text(
                StringConst.PRICINGTEXT,
                textAlign: TextAlign.center,
                style: GoogleFonts.lato(
                  color: desccolor,
                  fontWeight: FontWeight.w500,
                  fontSize: 18,

                ),
              ),
              SizedBox(height: 40,),
              Text(
                StringConst.PRICINGSLOGN,
                textAlign: TextAlign.center,
                style: GoogleFonts.lato(
                  color: textcolor,
                  fontWeight: FontWeight.w600,
                  fontSize: 40,

                ),
              ),
              SizedBox(height: 15,),
              SizedBox(
                width: width/1.8,
                child: Text(
                  StringConst.PRICINGDESC,
                  textAlign: TextAlign.center,
                  style: GoogleFonts.roboto(
                    color: desccolor,
                    fontWeight: FontWeight.w400,
                    fontSize: 16,

                  ),
                ),
              ),
              SizedBox(height: 120,),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [

                  SizedBox(
                    height: 660,
                    // width: width,
                    child: ListView.builder(
                        itemCount: pricingCardItems.length,
                        shrinkWrap: true,
                        scrollDirection: Axis.horizontal,
                        itemBuilder: (context, index){
                      return MouseRegion(
                        onEnter: (_) {
                          setState(() {
                            _isHovered = true;
                            currentIndex = index;
                          });
                        },
                        onExit: (_) {
                          setState(() {
                            _isHovered = false;
                          });
                        },
                        child: Padding(
                          padding: const EdgeInsets.all(16.0),
                          child: AnimatedContainer(
                            duration: Duration(milliseconds: 300),
                            transform: _isHovered && currentIndex == index ? Matrix4.translationValues(0, -50, 0) : Matrix4.identity(),
                            decoration: BoxDecoration(
                              color: _isHovered && currentIndex == index ? teamnameColor : Colors.white,
                              borderRadius: BorderRadius.circular(24),
                              boxShadow: _isHovered && currentIndex == index
                                  ? [BoxShadow(color: Colors.black26, blurRadius: 10, spreadRadius: 1, offset: Offset(0, 5))]
                                  : [BoxShadow(color: Colors.grey.withOpacity(.2), blurRadius: 10, spreadRadius: 1, offset: Offset(0, 5))],
                            ),
                            width: 394,
                            child: Padding(
                              padding: const EdgeInsets.all(32.0),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Row(
                                    children: [
                                      Container(height: 72, width: 72,decoration:BoxDecoration(
                                        color: _isHovered && currentIndex == index ?Colors.white:PricingiconBG,
                                        borderRadius: BorderRadius.circular(16)
                                      ),child: Image.asset(pricingCardItems[index].img.toString())),
                                      SizedBox(width: 20,),
                                      Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        mainAxisAlignment: MainAxisAlignment.start,
                                        children: [
                                        Text(
                                          pricingCardItems[index].planFor.toString(),
                                          style: GoogleFonts.roboto(
                                            color: _isHovered && currentIndex == index ?Colors.white:desccolor,
                                            fontWeight: FontWeight.w500,
                                            fontSize: 18,
                                          ),
                                        ),
                                        Text(
                                          pricingCardItems[index].title.toString(),
                                          style: GoogleFonts.lato(
                                            color: _isHovered && currentIndex == index ?Colors.white:textcolor,
                                            fontWeight: FontWeight.w700,
                                            fontSize: 24,

                                          ),
                                        ),
                                      ],)
                                    ],
                                  ),
                                  SizedBox(height: 15,),

                                  Text(
                                    pricingCardItems[index].desc.toString(),
                                    style: GoogleFonts.dmSans(
                                      color: _isHovered && currentIndex == index ?Colors.white:desccolor,
                                      fontWeight: FontWeight.w400,
                                      fontSize: 18,

                                    ),
                                  ),

                                  SizedBox(height: 15,),

                                  Row(
                                    children: [
                                      Text(
                                        pricingCardItems[index].price.toString(),
                                        style: GoogleFonts.lato(
                                          color: _isHovered && currentIndex == index ?Colors.white:textcolor,
                                          fontWeight: FontWeight.w700,
                                          fontSize: 54,

                                        ),
                                      ),
                                      SizedBox(width: 10,),
                                      Padding(
                                        padding: const EdgeInsets.only(top: 14),
                                        child: Text(
                                          pricingCardItems[index].time.toString(),
                                          style: GoogleFonts.roboto(
                                            color: _isHovered && currentIndex == index ?Colors.white:desccolor,
                                            fontWeight: FontWeight.w500,
                                            fontSize: 20,

                                          ),
                                        ),
                                      ),
                                    ],
                                  ),

                                  SizedBox(height: 20,),

                                  Text(
                                    "What’s included",
                                    style: GoogleFonts.roboto(
                                      color: _isHovered && currentIndex == index ?Colors.white:textcolor,
                                      fontWeight: FontWeight.w700,
                                      fontSize: 18,

                                    ),
                                  ),
                                  SizedBox(height: 20,),
                                  Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: pricingCardItems[index]
                                        .features
                                        ?.map((feature) {
                                      return Padding(
                                        padding: const EdgeInsets.symmetric(vertical:6.0),
                                        child: Row(
                                          children: [
                                            Container(
                                                height: 26,
                                                width: 26,
                                                decoration: BoxDecoration(
                                                  shape: BoxShape.circle,
                                                  color: _isHovered && currentIndex == index?Colors.white:bannerbtn
                                                ),
                                                child: Icon(Icons.check,size:15,color: _isHovered && currentIndex == index?bannerbtn:Colors.white,)),
                                           SizedBox(width: 10,),
                                            Text(
                                              feature,
                                              style: TextStyle(
                                                color: _isHovered && currentIndex == index
                                                    ? Colors.white
                                                    : Colors.black,
                                                fontSize: 14,
                                              ),
                                            ),
                                          ],
                                        ),
                                      );
                                    }).toList() ??
                                        [],
                                  ),
                                  SizedBox(height: 40,),
                                  ElevatedButton(
                                    style: ElevatedButton.styleFrom(
                                        primary: _isHovered && currentIndex == index ?Colors.white:bannerbtn, // Background color
                                        onPrimary: _isHovered && currentIndex == index ?bannerbtn:Colors.white, // Text color
                                        shape: RoundedRectangleBorder(
                                            borderRadius: BorderRadius.circular(96)

                                        )
                                    ),
                                    onPressed: (){}, child: Container(
                                    height: 72,
                                    child: Center(
                                      child: Text("Get started",
                                        textAlign: TextAlign.center,style:
                                        GoogleFonts.dmSans(

                                          fontWeight: FontWeight.w700,
                                          fontSize: 18,

                                        ),),
                                    ),
                                  ),)
                                ],
                              ),
                            ),
                          ),
                        ),
                      );
                    }),
                  )

                ],
              ),
            ],
          ),
        )
    );
  }
}

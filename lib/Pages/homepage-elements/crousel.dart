import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../Values/values.dart';
import '../../header.dart';
import '../../listner/listner.dart';
import '../../model/theme/theme-details.dart';
import '../../widgets/cards.dart';
import '../../widgets/constants.dart';
import '../../widgets/custom-buttons.dart';
import 'package:provider/provider.dart';
import '../../widgets/screen_helper.dart';

class BannerImage extends StatefulWidget {
  const BannerImage({Key? key}) : super(key: key);

  @override
  State<BannerImage> createState() => _BannerImageState();
}
List<ThemeTestimonial>? get_testimonial;
List<ThemeSetting>? get_themedetail;
class _BannerImageState extends State<BannerImage> {
  int _currentIndex=0;


  var view;
  var viewMF;
  @override
  void initState() {
    super.initState();

    // fetchImageUrlAndRegisterView(context,setState,StringConst.BANNER,'imageUrl','fit-content','-webkit-fill-available','','','');
    view='${StringConst.BASEHREF}'+StringConst.BANNER;
    viewMF='${StringConst.BASEHREF}'+StringConst.BANNERMF; /*HtmlElementView(
      key: UniqueKey(), // Force rebuild when imageUrl changes
      viewType: 'imageUrl',
    );*/

  }

  @override
  Widget build(BuildContext context) {
    final updater = Provider.of<Updater>(context, listen: true);
    get_themedetail = updater.getcustomertheme;
    get_testimonial = updater.getestimoniyal;

    final bool hasThemeDetails = get_themedetail != null && get_themedetail!.isNotEmpty;
  /*  if (get_themedetail == null || get_themedetail!.isEmpty) {
      print("No theme details available");
    } else {
      print("Theme details: ${get_themedetail![0].homeHeading}");
    }*/
    final List<Widget> cardList = [
      Container(
        height: 920,
        width:MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: NetworkImage(view),
            fit: BoxFit.cover,
          ),
        ),
        child: Column(
          children: [

            SizedBox(
              width: double.infinity,
              child: ScreenHelper(
                desktop: _buildUi(
                    context, kDesktopMaxWidth, maincolor,hasThemeDetails ? get_themedetail![0].homeHeading : ' ',hasThemeDetails ? get_themedetail![0].homeSubheading : ' ',hasThemeDetails ? get_themedetail![0].homeDescription : ' '),
                tablet: _buildUi(
                    context, kTabletMaxWidth, maincolor,hasThemeDetails ? get_themedetail![0].homeHeading : ' ',hasThemeDetails ? get_themedetail![0].homeSubheading : ' ',hasThemeDetails ? get_themedetail![0].homeDescription : ' '),
                mobile: _buildUi(
                    context,
                    getMobileMaxWidth(context),
                    maincolor,hasThemeDetails ? get_themedetail![0].homeHeading : ' ',hasThemeDetails ? get_themedetail![0].homeSubheading : ' ',hasThemeDetails ? get_themedetail![0].homeDescription : ' '),
              ),
            ),

          ],
        ),
      ),
      Container(
        height: 920,
        width:MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: NetworkImage(viewMF),
            fit: BoxFit.cover,
          ),
        ),
        child: Column(
          children: [

            SizedBox(
              width: double.infinity,
              child: ScreenHelper(
                desktop: _buildUiMF(
                    context, kDesktopMaxWidth, maincolor),
                tablet: _buildUiMF(
                    context, kTabletMaxWidth, maincolor),
                mobile: _buildUiMF(
                    context,
                    getMobileMaxWidth(context),
                    maincolor),
              ),
            ),

          ],
        ),
      ),
    ];
    return  Stack(
      children: [

        CarouselSlider(
          items: cardList,
          options: CarouselOptions(
            height: 920,
            viewportFraction: 1,
            autoPlay: true,
            reverse: true,
            disableCenter: true,
            enlargeCenterPage: false,
            autoPlayInterval: Duration(seconds: 3),
            aspectRatio: 2 / 2,
            onPageChanged: (index, reason) {
              setState(() {
                _currentIndex = index;
              });
            },
          ),
        ),
        Header(),
      ],
    );
  }
  Widget _buildUi(BuildContext context, double width, Color maincolor, String? title, String? subtitle, String? description) {

    return Column(
      children: [
        SizedBox(height: 100,),
        Text(title.toString(),textAlign: TextAlign.center,style: GoogleFonts.lato(
            color: maincolor,
            fontWeight: FontWeight.w600,
            fontSize: 62,
            height: 2
        ),),
        SizedBox(height: 30,),
        Text(subtitle.toString(),textAlign: TextAlign.center,style: GoogleFonts.lato(
          color: textcolor,
          fontWeight: FontWeight.w600,
          fontSize: 38,

        ),),
        SizedBox(height: 10,),
        SizedBox(
          width: MediaQuery.of(context).size.width/2.55,
          child: Text(description.toString(),
            textAlign: TextAlign.center,style: GoogleFonts.lato(
              color: desccolor,
              fontWeight: FontWeight.w400,
              fontSize: 16,

            ),),
        ),

        SizedBox(height: 40,),

        CustombannerButton(StringConst.BANNERBTN, (){})


      ],
    );
  }
  Widget _buildUiMF(BuildContext context, double width, Color maincolor) {

    return Column(
      children: [
        SizedBox(height: 100,),
        Text(StringConst.BANNERTIELEMF,textAlign: TextAlign.center,style: GoogleFonts.lato(
            color: maincolor,
            fontWeight: FontWeight.w600,
            fontSize: 62,
            height: 2
        ),),
        SizedBox(height: 30,),
        Text(StringConst.BANNERSUBTIELEMF,textAlign: TextAlign.center,style: GoogleFonts.lato(
          color: textcolor,
          fontWeight: FontWeight.w600,
          fontSize: 38,

        ),),
        SizedBox(height: 10,),
        SizedBox(
          width: MediaQuery.of(context).size.width/2.55,
          child: Text(StringConst.BANNERDESCMF,
            textAlign: TextAlign.center,style: GoogleFonts.lato(
              color: desccolor,
              fontWeight: FontWeight.w400,
              fontSize: 16,

            ),),
        ),

        SizedBox(height: 40,),

        CustombannerButton(StringConst.BANNERBTN, (){})


      ],
    );
  }

}



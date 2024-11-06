import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../Network/network.dart';
import '../footer.dart';
import '../listner/listner.dart';
import '../model/theme/theme-details.dart';
import '../shared_prefs/shared_prefs.dart';
import '../widgets/mobileheader.dart';
import 'package:provider/provider.dart';
import 'homepage-elements/about-company.dart';
import 'homepage-elements/attribute.dart';
import 'homepage-elements/crousel.dart';
import 'homepage-elements/our-services.dart';
import 'homepage-elements/registersection.dart';
import 'homepage-elements/search-shares-transf.dart';
import 'homepage-elements/testimonial.dart';

class HomePage extends StatefulWidget {
  HomePage({
    Key? key,
  }) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

List<ThemeTestimonial>? get_testimonial;
List<ThemeSetting>? get_themedetail;
// var sub_domainname = Uri.base.host.split(".");
var sub_domainname = 'jiplcrm';

// var testtt = 'https://www.cubatic.co';
var testtt = Uri.base.host;

// var testtt = 'jeevantika.online';
var domainname = testtt.split("/");
var domainname1 = domainname[2].split(".");


class _HomePageState extends State<HomePage> {

  bool? cutomerid_check;
  var customer_name;

  @override
  void initState() {
    super.initState();
    getDomainDetails();


  }

  @override
  Widget build(BuildContext context) {


    return Scaffold(
      backgroundColor: Colors.white,
      endDrawer: MobileDrawer(),
      body:  SingleChildScrollView(
        child: Column(
          children: [
            BannerImage(),
            SizedBox(height: 100,),
            OurServices(),
            SizedBox(height: 100,),
            SearchShareTransfer(),
            AttributeSection(),
            AboutSection(),
            TestimonialSection(),
            RegisterSection(),
            FooterSection()
          ],
        ),
      ),
    );
  }
  getDomainDetails() async {
    cutomerid_check = await SharedPrefs().checkValue("user_customer_id");
    /*customer_name = await SharedPrefs().getUserCustomerNAME();*/

    // if (sub_domainname[1] == 'jiplcrm') {
    if (sub_domainname == 'jiplcrm') {
      Map data = Map();
      data['action'] = "get";
      data['type'] = "subdomain";
      data['domain_name'] = "jeevantika";
      // data['domain_name'] = sub_domainname[0].toString();

      getThemeDetails(context, data);
    } else {
      Map data = Map();
      data['action'] = "get";
      data['type'] = "domain";
      // data['domain_name'] = "cubatic.co";
      data['domain_name'] = testtt;

      getThemeDetails(context, data);
    }
  }

}


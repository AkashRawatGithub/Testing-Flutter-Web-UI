import 'dart:convert';
import 'package:provider/provider.dart';

import '../config/config.dart';
import '../listner/listner.dart';
import '../model/theme/theme-details.dart';
import '../shared_prefs/shared_prefs.dart';
import 'package:http/http.dart' as http;

var allHeader = <String, String>{
  'Content-Type': 'application/json',
  'Accept': '*/*',
  'Accept-Encoding': 'gzip, deflate, br',
  'Connection': 'keep-alive',
};
var headerhome = <String, String>{
  'Content-Type': 'application/json',
  'Accept': '*/*',
  "Access-Control-Allow-Origin": "*",
  "Access-Control-Allow-Methods": "GET,PUT,POST,DELETE,PATCH,OPTIONS"

  // 'Content-Encoding': "gzip",
  // 'Accept-Encoding': 'gzip, deflate, br',
  // 'Connection': 'keep-alive',
};

bool investor = true;
var record_details;


//////////////////////theme data//////////////////////////////////////

getThemeDetails(context, data) async {

  try {

    // final proxyUrl = Uri.base.host;
    // final apiUrl = Environment.Theme_Details;
    var res = await http.post(Environment.Theme_Details,
        headers: headerhome, body: jsonEncode(data));

    if (res.statusCode == 200) {
      var result = json.decode(res.body);

      var responce = result["data"];
      // print(" api responseeeee >>>>  :     :-    $responce");
      int clone = responce[0]['clone_id'];

      await SharedPrefs().setUserCloneID(clone);

      // var clone_id = await SharedPrefs().getCloneID();

//
      var getourteam = result["team"];
      var gettestimonials = result["testimonials"];

      //
      ////////////////////////////////////////data

      Provider.of<Updater>(context, listen: false).setCustomThemeList(
          List<ThemeSetting>.from(
              responce.map((a) => ThemeSetting.fromJson(a)).toList()));

      await SharedPrefs().setLogo(responce[0]['logo']);
      await SharedPrefs().setLogoIcon(responce[0]['logo_icon']);
      await SharedPrefs().setHomeImage(responce[0]['home_image']);
      ////////////////////////////////////////testimorila
      Provider.of<Updater>(context, listen: false).setTestimonialList(
          List<ThemeTestimonial>.from(gettestimonials
              .map((a) => ThemeTestimonial.fromJson(a))
              .toList()));
      ////////////////////////////////////////ourteam
      Provider.of<Updater>(context, listen: false).setOurTeamManagementList(
          List<ThemeManagement>.from(
              getourteam.map((a) => ThemeManagement.fromJson(a)).toList()));

      // Provider.of<Updater>(context, listen: false)
      //     .setcustomerthemelist(themeSetting.fromJson(responce));
    }
  } catch (e) {
    print(e);
  }
}

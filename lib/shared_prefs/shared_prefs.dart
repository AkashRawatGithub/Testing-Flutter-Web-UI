import 'package:shared_preferences/shared_preferences.dart';

class SharedPrefs {
  setLogoIcon(logo_icon) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.setString('user_logo_icon', logo_icon);
  }

  getLogoIcon() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    return prefs.get('user_logo_icon');
  }

  setHomeImage(home_image) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.setString('user_home_image', home_image);
  }

  getHomeImage() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    return prefs.get('user_home_image');
  }

  setLogo(logo) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.setString('user_logo', logo);
  }

  getLogo() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    return prefs.get('user_logo');
  }

  setUserCloneID(id) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.setInt('user_clone_id', id);
  }

  Future<bool> checkValue(value) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    return prefs.containsKey(value);
  }

  setUserCustomerNAME(name) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.setString('user_customer_name', name);
  }

  getUserCustomerNAME() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    return prefs.get('user_customer_name') as String;
  }
}

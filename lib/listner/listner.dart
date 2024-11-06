import 'package:flutter/cupertino.dart';
import '../model/theme/theme-details.dart';

class Updater with ChangeNotifier {
  bool _isLoad = false;
  bool get isLoading => _isLoad;

  void setLoader(bool value) {
    _isLoad = value;
    notifyListeners();
  }

  BuildContext? _appContext;
  BuildContext? get getappcontext => _appContext;

  void setAppContext(BuildContext context) {
    _appContext = context;
    notifyListeners();
  }

  List<ThemeSetting> _customertheme = [];
  List<ThemeSetting> get getcustomertheme => _customertheme;

  void setCustomThemeList(List<ThemeSetting> list) {
    _customertheme = list;
    notifyListeners();
  }

  List<ThemeManagement> _ourteammanagement = [];
  List<ThemeManagement> get getourteammanagement => _ourteammanagement;

  void setOurTeamManagementList(List<ThemeManagement> list) {
    _ourteammanagement = list;
    notifyListeners();
  }

  List<ThemeTestimonial> _testimoniyal = [];
  List<ThemeTestimonial> get getestimoniyal => _testimoniyal;

  void setTestimonialList(List<ThemeTestimonial> list) {
    _testimoniyal = list;
    notifyListeners();
  }
}


import 'package:flutter/cupertino.dart';



import '../Pages/404.dart';
import '../Pages/About.dart';
import '../Pages/Homepage.dart';
import '../Pages/contactus.dart';
import '../Pages/login-form.dart';
import '../Pages/pricing.dart';
import '../Pages/refund-policy.dart';
import '../Pages/register-form.dart';
import '../Pages/terms-of-service.dart';
import '../Pages/unclaimed-share.dart';
import '../Screen/dashbord.dart';

class RoutesName {
  static const String HOME = '/';
  static const String ABOUT = '/about';
  static const String CONTACTUS = '/contact-us';
  static const String PRICING = '/pricing';
  static const String TERMS = '/terms-of-service';
  static const String REFUNDPOLICY = '/cancellation-and-refund-policy';
  static const String UNCLAIM = '/unclaimed-shares';
  static const String LOGIN = '/login';
  static const String REGISTER = '/registration';
  /////////////////////////////////Dashboard/////////////////////////////
  static const String DASHBOARD = '/search-investor';

}

class RouteGenerator {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    // String page = "";
    // Map args = settings.arguments;
    // if (args["page"] != null) {
    //   page = args["page"];
    // }
    // //print("object   01 " + args["page"]);
    //print("settings.name " + settings.arguments.toString());
    var routingData = settings.name?.getRoutingData;
    switch (routingData?.route) {
      case RoutesName.HOME:
        return _GeneratePageRoute(
            widget:  HomePage(),
            routeName: settings.name.toString());

      case RoutesName.ABOUT:
        return _GeneratePageRoute(
            widget:  AboutPage(),
            routeName: settings.name.toString());

        case RoutesName.CONTACTUS:
        return _GeneratePageRoute(
            widget:  ContactusPage(),
            routeName: settings.name.toString());

        case RoutesName.PRICING:
                return _GeneratePageRoute(
                    widget:  PricingPage(),
                    routeName: settings.name.toString());

         case RoutesName.TERMS:
                return _GeneratePageRoute(
                    widget:  TermsServicePage(),
                    routeName: settings.name.toString());

          case RoutesName.REFUNDPOLICY:
                return _GeneratePageRoute(
                    widget:  RefundpolicyPage(),
                    routeName: settings.name.toString());

           case RoutesName.UNCLAIM:
                return _GeneratePageRoute(
                    widget:  UnclaimedsharePage(),
                    routeName: settings.name.toString());

           case RoutesName.LOGIN:
                return _GeneratePageRoute(
                    widget:  LoginPage(),
                    routeName: settings.name.toString());

            case RoutesName.REGISTER:
                return _GeneratePageRoute(
                    widget:  RegisterPage(),
                    routeName: settings.name.toString());

////////////////////////////////////////////////////////////

            case RoutesName.DASHBOARD:
              return _GeneratePageRoute(
                  widget: DashboardPage(),
                  routeName: settings.name.toString());




      default:
        return _GeneratePageRoute(
            widget: const Error_page(
              key: Key("value"),
            ),
            routeName: settings.name.toString());
    }
  }


}
class _GeneratePageRoute extends PageRouteBuilder {
  final Widget widget;
  final String routeName;

  _GeneratePageRoute({required this.widget, required this.routeName})
      : super(
    settings: RouteSettings(name: routeName),
    pageBuilder: (BuildContext context, Animation<double> animation,
        Animation<double> secondaryAnimation) {
      return widget;
    },
    transitionDuration: const Duration(milliseconds: 500),
    transitionsBuilder: (BuildContext context,
        Animation<double> animation,
        Animation<double> secondaryAnimation,
        Widget child) {
      return FadeTransition(
        opacity: animation,
        child: child,
      );
    },
  );
}

/*class _GeneratePageRoute extends PageRouteBuilder {
  Widget widget;
  String routeName;
  _GeneratePageRoute({required this.widget, required this.routeName})
      : super(
      settings: RouteSettings(name: routeName),
      pageBuilder: (BuildContext context, Animation<double> animation,
          Animation<double> secondaryAnimation) {
        return widget;
      },
      transitionDuration: const Duration(milliseconds: 500),
      transitionsBuilder: (BuildContext context,
          Animation<double> animation,
          Animation<double> secondaryAnimation,
          Widget child) {
        return SlideTransition(
          textDirection: TextDirection.rtl,
          position: Tween<Offset>(
            begin: const Offset(0, 0.0),
            end: Offset.zero,
          ).animate(animation),
          child: child,
        );
      });
}*/

class RoutingData {
  final String route;
  // final Map<String, String> _queryParameters;

  RoutingData({
    required this.route,
    //   Map<String, String> queryParameters,
  });
// : _queryParameters = queryParameters;
//
// operator [](String key) => _queryParameters[key];
}

extension StringExtension on String {
  RoutingData get getRoutingData {
    var uriData = Uri.parse(this);

    return RoutingData(
      // queryParameters: uriData.queryParameters,
      route: uriData.path,
    );
  }
}
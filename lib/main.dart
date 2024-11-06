import 'package:flutter/material.dart';
import 'package:newjeevantikacustomerswebsite/routes/urlroute.dart';
import 'package:newjeevantikacustomerswebsite/widgets/constants.dart';
import 'package:flutter_web_plugins/flutter_web_plugins.dart';
import 'package:flutter/foundation.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:responsive_framework/responsive_wrapper.dart';
import 'package:responsive_framework/utils/scroll_behavior.dart';
import 'listner/listner.dart';

void main() {
  setUrlStrategy(PathUrlStrategy());
  WidgetsFlutterBinding.ensureInitialized();
  runApp(MyApp());

}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider<Updater>(
          create: (_) => Updater(),
        ),
      ],
      child: Consumer<Updater>(
        builder: (context, themeSetting, child) {
          final companyName = themeSetting.getcustomertheme?.isNotEmpty ?? false
              ? themeSetting.getcustomertheme![0].companyName ?? "Default Company"
              : "Default Company";

          return MaterialApp(
            title: companyName,
            debugShowCheckedModeBanner: false,
            themeMode: ThemeMode.dark,
            darkTheme: ThemeData(
              platform: TargetPlatform.windows,
              scaffoldBackgroundColor: background,
              primaryColor: kPrimaryColor,
              canvasColor: background,
              textTheme: GoogleFonts.poppinsTextTheme(),
            ),
            builder: (context, widget) => ResponsiveWrapper.builder(
              ClampingScrollWrapper.builder(context, widget!),
              defaultScale: true,
              breakpoints: [
                const ResponsiveBreakpoint.resize(450, name: MOBILE),
                const ResponsiveBreakpoint.resize(800, name: TABLET),
                const ResponsiveBreakpoint.resize(1000, name: TABLET),
                const ResponsiveBreakpoint.resize(1200, name: DESKTOP),
                const ResponsiveBreakpoint.resize(2460, name: "4K"),
              ],
              background: Container(
                color: background,
              ),
            ),
            onGenerateRoute: RouteGenerator.generateRoute,
            initialRoute: RoutesName.HOME,
          );
        },
      ),
    );
  }
}

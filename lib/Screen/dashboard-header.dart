import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


import '../Values/values.dart';
import '../routes/urlroute.dart';
import '../widgets/getimage.dart';
import '../widgets/screen_helper.dart';



class HeaderDashboardLogo extends StatefulWidget {
  const HeaderDashboardLogo({Key? key}) : super(key: key);

  @override
  State<HeaderDashboardLogo> createState() => _HeaderDashboardLogoState();
}

class _HeaderDashboardLogoState extends State<HeaderDashboardLogo> {

  var view;
  @override
  void initState() {
    super.initState();
    fetchImageUrlAndRegisterView(context,setState,StringConst.LOGO,'logoUrl','100%','100%','','','' );
    view= HtmlElementView(
      key: UniqueKey(), // Force rebuild when imageUrl changes
      viewType: 'logoUrl',
    );
  }

  @override
  Widget build(BuildContext context) {

    return MouseRegion(
      cursor: SystemMouseCursors.click,
      child: GestureDetector(
        onTap: () {
          Navigator.pushNamed(context, RoutesName.HOME);
        },
        child:SizedBox(
          height: 60,
          width: 109,
          child: view,
        ),
      ),
    );
  }
}


class HeaderDashboardRow extends StatefulWidget {
  const HeaderDashboardRow({Key? key}) : super(key: key);

  @override
  State<HeaderDashboardRow> createState() => _HeaderDashboardRowState();
}

class _HeaderDashboardRowState extends State<HeaderDashboardRow> with SingleTickerProviderStateMixin{

  @override
  Widget build(BuildContext context) {

    return Padding(
      padding: const EdgeInsets.only(right: 20.0),
      child: Row(
        children: [
          Image.asset("assets/star.png"),
          SizedBox(width: 40,),
          Image.asset("assets/notification.png"),
          SizedBox(width: 40,),
          Image.asset("assets/user.png")
        ]
      ),
    );
  }

}

class HeaderDashboard extends StatefulWidget {
  const HeaderDashboard({Key? key}) : super(key: key);

  @override
  State<HeaderDashboard> createState() => _HeaderDashboardState();
}

class _HeaderDashboardState extends State<HeaderDashboard> {

  @override
  Widget build(BuildContext context) {

    return ScreenHelper(
      desktop: Padding(
        padding: const EdgeInsets.symmetric(vertical: 8.0),
        child: buildHeader(),
      ),
      // We will make this in a bit
      mobile: buildMobileHeader(context),
      tablet: buildTabletHeader(),
    );
  }

  var view;
  @override
  void initState() {
    super.initState();
    fetchImageUrlAndRegisterView(context,setState,StringConst.LOGO,'logoUrl','100%','100%','','','');
    view= HtmlElementView(
      key: UniqueKey(), // Force rebuild when imageUrl changes
      viewType: 'logoUrl',
    );
  }
  // mobile header
  Widget buildMobileHeader(context) {
    return SafeArea(
      child: SizedBox(
        height: 65,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            MouseRegion(
              cursor: SystemMouseCursors.click,
              child: GestureDetector(
                onTap: () {
                  Navigator.pushNamed(context, RoutesName.HOME);
                },
                child:Padding(
                  padding: const EdgeInsets.only(left: 8.0),
                  child: SizedBox(
                    height: 40,
                    width: 70,
                    child: view,
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 25.0),
              child: MouseRegion(
                cursor: SystemMouseCursors.click,
                child: GestureDetector(
                  onTap: () {
                    Scaffold.of(context).openEndDrawer();
                  },
                  child: const Icon(
                    Icons.menu,
                    color: Colors.black,
                    size: 28.0,
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget buildTabletHeader() {

    return Container(
      height: 75,
      padding: const EdgeInsets.symmetric(horizontal: 6.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          MouseRegion(
            cursor: SystemMouseCursors.click,
            child: GestureDetector(
              onTap: () {
                Navigator.pushNamed(context, RoutesName.HOME);
              },
              child:SizedBox(
                height: 50,
                width: 95,
                child: view,
              ),

            ),
          ),
          Row(
            children: [

            ]
          ),
        ],
      ),
    );
  }

  // Lets plan for mobile and smaller width screens
  Widget buildHeader() {

    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.2),
            blurRadius: 10.0,
            offset: Offset(0, 12), // Shadow only at the bottom
          ),
        ],
      ),
      height: 95,
      padding: EdgeInsets.symmetric(horizontal: 56.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          HeaderDashboardLogo(),
          HeaderDashboardRow(),
        ],
      ),
    );
  }
}
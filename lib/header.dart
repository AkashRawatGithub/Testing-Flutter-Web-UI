
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:newjeevantikacustomerswebsite/routes/urlroute.dart';
import 'package:newjeevantikacustomerswebsite/widgets/constants.dart';
import 'package:newjeevantikacustomerswebsite/widgets/getimage.dart';
import 'package:newjeevantikacustomerswebsite/widgets/screen_helper.dart';
import 'package:provider/provider.dart';
import 'Values/values.dart';
import 'listner/listner.dart';
import 'model/theme/theme-details.dart';


class HeaderLogo extends StatefulWidget {
  const HeaderLogo({Key? key}) : super(key: key);

  @override
  State<HeaderLogo> createState() => _HeaderLogoState();
}
class _HeaderLogoState extends State<HeaderLogo> {
  List<ThemeSetting>? getThemeDetail;
  var view;
  bool firstTime = false;
  @override
  void initState() {
    super.initState();
    firstTime = true;
  }

  @override
  Widget build(BuildContext context) {
    getThemeDetail = Provider.of<Updater>(context, listen: false).getcustomertheme;
    if (getThemeDetail != null && getThemeDetail!.isNotEmpty) {
      final logoUrl = getThemeDetail![0].logo;

      // Fetch the image URL and register the view
      fetchImageUrlforLogo(
        context,
        setState,
        logoUrl,
        'logoURL',
        '100%',
        '100%',
        '',
        '',
        '',
      );

      // Create the view with the retrieved logo URL
     if (firstTime == true){
        setState(() {

          view = HtmlElementView(
            key: UniqueKey(), // Force rebuild when imageUrl changes
            viewType: 'logoURL',
          );
        });
      }
      firstTime = false;
    }



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


class HeaderRow extends StatefulWidget {
  const HeaderRow({Key? key}) : super(key: key);

  @override
  State<HeaderRow> createState() => _HeaderRowState();
}

class _HeaderRowState extends State<HeaderRow> with SingleTickerProviderStateMixin{
  List<ThemeSetting>? getThemedetail;
  var sub_domainname = Uri.base.host.split(".");
  String? _selectedValue;
  // List<String> _options = ['Unclaimed Shares', 'Mutual Fund', 'Pricing'];
  List<PopupMenuOption> _options = [
    PopupMenuOption('/unclaimed-shares', 'Unclaimed Shares'),
    PopupMenuOption('/mutual-fund', 'Mutual Fund'),
    PopupMenuOption('/pricing', 'Pricing'),
  ];

  bool arrow = false;
  late AnimationController _controller;
  late Animation<double> _animation;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      duration: const Duration(milliseconds: 300),
      vsync: this,
    );
    _animation = Tween<double>(begin: 0, end: 1).animate(_controller);
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  void _toggleArrow() {
    setState(() {
      arrow = !arrow;
      if (arrow) {
        _controller.forward();
      } else {
        _controller.reverse();
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    getThemedetail =
        Provider.of<Updater>(context, listen: true).getcustomertheme;
    if (getThemedetail == null || getThemedetail!.isEmpty ) {
      return Center(
        child: Text('Loading...'), // Or any placeholder widget
      );
    }
    headerItems[5] = HeaderItem(
      title: "+91 ${getThemedetail![0].mobile ?? ''}",
      isButton: "2",
      onTap: RoutesName.HOME,
    );
    return Row(
      children: headerItems
          .map(
            (item) => item.isButton != null
            ? Row(
          children: [
            item.isButton=="1"?Padding(
                padding: const EdgeInsets.all(8.0),
        child: MouseRegion(
          cursor: SystemMouseCursors.click,
          child: Container(
            height: 46,
            width: 128,
            decoration: BoxDecoration(
                borderRadius:
                BorderRadius.circular(30.0),
              border: Border.all(color: bannerbtn)
               ),

            child: TextButton(
              onPressed: () {
                 setState(() {
                        Navigator.pushNamed(
                            context, item.onTap.toString());
                      });
              },
              child: Text(

                item.title.toString(),
                style: GoogleFonts.lato(
                    color: bannerbtn,
                    fontWeight: FontWeight.w500,
                    fontSize: 16),
              ),
            ),
          ),
        ),
      ):
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: MouseRegion(
                cursor: SystemMouseCursors.click,
                child: Container(
                  height: 41,
                  width: 203,
                  decoration: BoxDecoration(
                      borderRadius:
                      BorderRadius.circular(20.0),
                      gradient: LinearGradient(
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                        stops: const [
                          0.2,
                          0.9,
                        ],
                        colors: [
                          bannerbtn,
                          bannerbtn,
                          //  maincolor.withOpacity(0.5),
                        ],
                      )),
                  padding: const EdgeInsets.symmetric(
                      horizontal: 10.0, vertical: 2.0),
                  child: TextButton(
                    onPressed: () {
                     /* setState(() {
                        Navigator.pushNamed(
                            context, item.onTap);
                      });*/
                    },
                    child: Row(
                      children: [
                        const Icon(
                          Icons.call,
                          color: Colors.white,
                        ),
                        const SizedBox(
                          width: 5,
                        ),
                        Text(

                          item.title.toString()?? '',
                          style:GoogleFonts.lato(
                              color: Colors.white,
                              fontWeight: FontWeight.w500,
                              fontSize: 16),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ],
        )
            :
            item.title != 'Services'?MouseRegion(
          cursor: SystemMouseCursors.click,
          child: Container(
            margin: const EdgeInsets.only(right: 30.0),
            child: GestureDetector(
              onTap: () {
                setState(() {
                  Navigator.pushNamed(context, item.onTap.toString());
                });
              },
              child: Text(
                // "hello",
                item.title.toString(),
                style: GoogleFonts.lato(
                  color: item.onTap == Uri.base.path
                      ? maincolor
                      : textcolor,
                  fontWeight: FontWeight.w600,
                  fontSize: 16,

                )
              ),
            ),
          ),
        ):
            GestureDetector(
              child: Container(
                padding: EdgeInsets.only(right: 15.0),
                child: PopupMenuButton<PopupMenuOption>(
                  tooltip: '',
                  offset: Offset(50, 30), // Adjust the offset as needed
                  onSelected: (PopupMenuOption newValue) {
                    setState(() {
                      _selectedValue = newValue.value;
                      if (_selectedValue == "Pricing") {
                        Navigator.pushNamed(context, RoutesName.PRICING);
                      } else if(_selectedValue == "Unclaimed Shares") {
                        Navigator.pushNamed(context, RoutesName.UNCLAIM);
                      }
                    });
                  },
                  onCanceled: () {
                    _toggleArrow(); // Menu closed
                  },
                  onOpened: () {
                    _toggleArrow(); // Menu opened
                  },
                  itemBuilder: (BuildContext context) {
                    return MediaQuery.of(context).size.width > 1200
                        ? _options.map((PopupMenuOption option) {
                      return PopupMenuItem<PopupMenuOption>(
                        height: 34,
                        value: option,
                        child: Container(
                          constraints: BoxConstraints(maxWidth: 150),
                          child: Text(
                            '-  ${option.value}',
                            style: GoogleFonts.lato(
                              color: Uri.base.path == option.id ? maincolor : textcolor,
                              fontWeight: FontWeight.w400,
                              fontSize: 12,
                            ),
                          ),
                        ),
                      );
                    }).toList()
                        : [];
                  },
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      Text(
                        'Services',
                        style: GoogleFonts.lato(
                          color: Uri.base.path == '/pricing' || Uri.base.path == '/unclaimed-shares' ? maincolor : textcolor,
                          fontWeight: FontWeight.w600,
                          fontSize: 16,
                        ),
                      ),
                      SizedBox(width: 10),
                      Padding(
                        padding: const EdgeInsets.only(top: 6.0),
                        child: AnimatedBuilder(
                          animation: _animation,
                          builder: (context, child) {
                            return Transform.rotate(
                              angle: _animation.value * 3.14159, // Rotate between 0 and 180 degrees
                              child: Icon(
                                Icons.keyboard_arrow_down_sharp,
                                size: 20,
                              ),
                            );
                          },
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            )
      )
          .toList(),
    );
  }

}

class Header extends StatefulWidget {
  const Header({Key? key}) : super(key: key);

  @override
  State<Header> createState() => _HeaderState();
}

class _HeaderState extends State<Header> {

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
  String _selectedValue='Unclaimed Shares';
  List<String> _options = ['Unclaimed Shares', 'Mutual Fund'];
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
            children: headerItems
                .map(
                  (item) => item.isButton != null
                      ? MouseRegion(
                          cursor: SystemMouseCursors.click,
                          child: GestureDetector(
                            onTap: () {
                              Navigator.pushNamed(context, item.onTap.toString());
                            },
                            child: Container(
                              decoration: BoxDecoration(
                                color: maincolor,
                                borderRadius: BorderRadius.circular(4.0),
                              ),
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 20.0, vertical: 5.0),
                              child: Text(
                                '${item.title}',
                                style: const TextStyle(
                                  color: Colors.white,
                                  fontSize: 12.0,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                          ),
                        )
                      : item.title != 'Services'?MouseRegion(
                          cursor: SystemMouseCursors.click,
                          child: Container(
                            margin: const EdgeInsets.only(right: 30.0),
                            child: GestureDetector(
                              onTap: () {
                                Navigator.pushNamed(context, item.onTap.toString());
                              },
                              child: Text(
                                '${item.title}',
                                style: GoogleFonts.lato(
                                  color: item.onTap == Uri.base.path
                                      ? maincolor
                                      : textcolor,
                                  fontWeight: FontWeight.w600,
                                  fontSize: 12,

                                )
                              ),
                            ),
                          ),
                        ):
                  Padding(
                    padding: const EdgeInsets.only(right: 18.0),
                    child: PopupMenuButton<String>(
                      tooltip: '',
                      offset: Offset(50, 30), // Adjust the offset as needed
                      onSelected: (String newValue) {
                        setState(() {
                          _selectedValue = newValue;
                        });
                      },
                      itemBuilder: (BuildContext context) {
                        return _options.map((String value) {
                          return PopupMenuItem<String>(

                            height: 34,
                            padding: EdgeInsets.only(left: 18),
                            value: value,
                            child: Text('-'+'  '+value,style:GoogleFonts.lato(
                              color: _selectedValue == value ?maincolor:textcolor,
                              fontWeight: FontWeight.w400,
                              fontSize: 12,

                            ),),
                          );
                        }).toList();
                      },
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: <Widget>[
                          Text(
                            'Services',
                            style: GoogleFonts.lato(
                              color: maincolor,
                              fontWeight: FontWeight.w600,
                              fontSize: 12,

                            ),
                          ),
                          SizedBox(width: 10),
                          Padding(
                            padding: const EdgeInsets.only(top: 6.0),
                            child: Transform.rotate(
                              angle: 1.5708, // 90 degrees in radians
                              child: Icon(
                                Icons.arrow_back_ios_rounded,
                                size: 10,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                )
                .toList(),
          ),
        ],
      ),
    );
  }

  // Lets plan for mobile and smaller width screens
  Widget buildHeader() {

    return Container(
      height: 80,
      padding: const EdgeInsets.symmetric(horizontal: 56.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          HeaderLogo(),
          HeaderRow(),
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../Values/values.dart';
import 'constants.dart';

MobileDrawer(){
 return Drawer(
    child: SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 16.0,
          vertical: 24.0,
        ),
        child: ListView.separated(
          itemBuilder: (BuildContext context, int index) {
            return headerItems[index].isButton != null
                ? headerItems[index].isButton == "1"
                ? MouseRegion(
              cursor: SystemMouseCursors.click,
              child: Container(
                height: 39,
                decoration: BoxDecoration(
                  color: Colors.white,
                  border: Border.all(width: 1, color: maincolor),
                  borderRadius: BorderRadius.circular(20.0),
                ),
                padding: const EdgeInsets.symmetric(
                    horizontal: 5.0, vertical: 1.0),
                child: TextButton(
                  onPressed: () {},
                  child: Text(
                      '${headerItems[index].title}',
                      style: GoogleFonts.poppins(
                          color: textcolor,
                          fontWeight: FontWeight.w500,
                          fontSize: 14)),
                ),
              ),
            )
                : MouseRegion(
              cursor: SystemMouseCursors.click,
              child: Container(
                height: 41,
                width: 203,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20.0),
                    gradient: LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      stops: const [
                        0.2,
                        0.9,
                      ],
                      colors: [
                        maincolor,
                        maincolor,
                        //  maincolor.withOpacity(0.5),
                      ],
                    )),
                padding: const EdgeInsets.symmetric(
                    horizontal: 10.0, vertical: 2.0),
                child: TextButton(
                  onPressed: () {
                    Navigator.pushNamed(
                        context, headerItems[index].onTap.toString());
                  },
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Icon(
                        Icons.call,
                        color: Colors.white,
                      ),
                      const SizedBox(
                        width: 5,
                      ),
                      Text(
                        "9782828822",
                        // item.title,
                        style: const TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w500,
                            fontSize: 18),
                      ),
                    ],
                  ),
                ),
              ),
            )

                : ListTile(
              title: MouseRegion(
                cursor: SystemMouseCursors.click,
                child: GestureDetector(
                  onTap: () {
                    Navigator.pushNamed(
                        context, headerItems[index].onTap.toString());
                  },
                  child: Text(
                    ' ${headerItems[index].title}',
                    style: const TextStyle(
                      color: Colors.black,
                    ),
                  ),
                ),
              ),
            );
          },
          separatorBuilder: (BuildContext context, int index) {
            return const SizedBox(
              height: 10.0,
            );
          },
          itemCount: headerItems.length,
        ),
      ),
    ),
  );
}
import 'package:flutter/material.dart';
import 'dart:html' as html;
import 'dart:ui' as ui;

import '../Values/values.dart';
import '../config/config.dart';
import '../routes/urlroute.dart';

fetchImageUrlforLogo(BuildContext context,setState,imgurl,imageUrl,height, width, objfit,overflow,radious) {
  String? logoUrl;
  bool isImageRegistered = false;
  String newLogoUrl = '${Environment.BASEURL}${imgurl}?timestamp=${DateTime.now().millisecondsSinceEpoch}';

  /* print("urllll=$newLogoUrl");*/
  if (logoUrl != newLogoUrl && !isImageRegistered) {
    setState(() {
      logoUrl = newLogoUrl;
    });

    ui.platformViewRegistry.registerViewFactory(
      imageUrl,
          (int viewId) {
        final element = html.ImageElement()
          ..style.height = height
          ..style.width = width
          ..style.objectFit=objfit
          ..style.overflow=overflow
          ..style.borderRadius=radious
          ..src = logoUrl;
        element.onClick.listen((_) {
          Navigator.pushNamed(context, RoutesName.HOME);
        });
        return element;
      },
    );

    setState(() {
      isImageRegistered = true;
    });
  }

}

fetchImageUrlAndRegisterView(BuildContext context,setState,imgurl,imageUrl,height, width, objfit,overflow,radious) {
  String? logoUrl;
  bool isImageRegistered = false;
    String newLogoUrl = '${StringConst.BASEHREF}${imgurl}?timestamp=${DateTime.now().millisecondsSinceEpoch}';

   /* print("urllll=$newLogoUrl");*/
    if (logoUrl != newLogoUrl && !isImageRegistered) {
      setState(() {
        logoUrl = newLogoUrl;
      });

      ui.platformViewRegistry.registerViewFactory(
        imageUrl,
            (int viewId) {
          final element = html.ImageElement()
            ..style.height = height
            ..style.width = width
            ..style.objectFit=objfit
            ..style.overflow=overflow
            ..style.borderRadius=radious
            ..src = logoUrl;
         /* element.onClick.listen((_) {
            Navigator.pushNamed(context, RoutesName.HOME);
          });*/
          return element;
        },
      );

      setState(() {
        isImageRegistered = true;
      });
    }

}


fetchImageUrlAndRegisterViewforTeam(BuildContext context,setState,imgurl,imageUrl,height, width, objfit,overflow,radius) {
  String? logoUrl;
  bool isImageRegistered = false;
  String newLogoUrl = '${StringConst.BASEHREF}${imgurl}?timestamp=${DateTime.now().millisecondsSinceEpoch}';

  if (logoUrl != newLogoUrl && !isImageRegistered) {
    setState(() {
      logoUrl = newLogoUrl;
    });

    ui.platformViewRegistry.registerViewFactory(
      imageUrl,
          (int viewId) {
        final element = html.DivElement()
          ..style.display = 'flex'
          ..style.justifyContent = 'center'
          ..style.alignItems = 'center'
          ..style.height = '100%'
          ..style.width = '100%'
          ..style.overflow = overflow
          ..append(html.ImageElement()
            ..src = logoUrl!
            ..style.height = height
            ..style.width = width
            ..style.filter = 'none'
            ..style.transition = 'transform 0.3s ease'

            ..style.objectFit = objfit
            ..style.borderRadius = radius);
        return element;
      },
    );

    setState(() {
      isImageRegistered = true;
    });
  }

}
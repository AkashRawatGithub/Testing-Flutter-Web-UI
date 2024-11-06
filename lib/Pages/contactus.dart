import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../footer.dart';
import '../header.dart';
import '../widgets/mobileheader.dart';

import 'contactus-elements/contactus-banner.dart';
import 'contactus-elements/contactus-form.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class ContactusPage extends StatefulWidget {
  ContactusPage({
    Key? key,
  }) : super(key: key);

  @override
  _ContactusPageState createState() => _ContactusPageState();
}

class _ContactusPageState extends State<ContactusPage> {

  late GoogleMapController mapController;

  final LatLng _center = const LatLng(-33.86, 151.20);

  void _onMapCreated(GoogleMapController controller) {
    mapController = controller;
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      endDrawer: MobileDrawer(),
      body:  SingleChildScrollView(
        child: Column(
          children: [
            Header(),
            ContactusBanner(),
            CustomerformSection(),
            SizedBox(
              height: 681,
              width: MediaQuery.of(context).size.width,
              child: GoogleMap(
                onMapCreated: _onMapCreated,
                initialCameraPosition: CameraPosition(
                  target: _center,
                  zoom: 11.0,
                ),
              ),
            ),
            FooterSection()
          ],
        ),
      ),
    );
  }
}


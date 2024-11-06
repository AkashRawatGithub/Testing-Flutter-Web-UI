import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../footer.dart';
import '../widgets/constants.dart';
import '../widgets/mobileheader.dart';
import 'Register-elements/registerform.dart';
import 'login-elements/otp-login.dart';

class RegisterPage extends StatefulWidget {
  RegisterPage({
    Key? key,
  }) : super(key: key);

  @override
  _RegisterPageState createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  bool showLoginForm = true;


  void toggleSection(bool showLogin) {
    setState(() {
      showLoginForm = showLogin;
    });
  }



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      endDrawer: MobileDrawer(),
      body:  SingleChildScrollView(
        child: Stack(
          children: [
            Positioned(
              right: -1,
              child: Container(
                color: loginbannercolor,
                height: MediaQuery.of(context).size.height*2,
                width: MediaQuery.of(context).size.width/3,
              ),
            ),
            Column(
              children: [
                RegisterFormSection(),
                FooterSection()
              ],
            ),
          ],
        ),
      ),
    );
  }
}


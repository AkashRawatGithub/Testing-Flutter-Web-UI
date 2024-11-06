import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../footer.dart';
import '../widgets/constants.dart';
import '../widgets/mobileheader.dart';
import 'login-elements/loginPassword.dart';
import 'login-elements/otp-login.dart';

class LoginPage extends StatefulWidget {
  LoginPage({
    Key? key,
  }) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
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
                height: MediaQuery.of(context).size.height,
                width: MediaQuery.of(context).size.width/3,
              ),
            ),
            Column(
              children: [
                AnimatedSwitcher(
                  duration: const Duration(milliseconds: 300),
                  transitionBuilder: (Widget child, Animation<double> animation) {
                    return FadeTransition(opacity: animation, child: child);
                  },
                child:  showLoginForm
                    ? LoginFormSection(onToggle: toggleSection)
                    :OtpFormSection(onToggle: toggleSection),
                ),

                FooterSection()
              ],
            ),
          ],
        ),
      ),
    );
  }
}


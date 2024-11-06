import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../footer.dart';
import 'package:responsive_framework/responsive_wrapper.dart';
import '../Values/values.dart';
import '../header.dart';
import '../widgets/constants.dart';
import '../widgets/mobileheader.dart';

import '../widgets/screen_helper.dart';


class RefundpolicyPage extends StatefulWidget {
  RefundpolicyPage({
    Key? key,
  }) : super(key: key);

  @override
  _RefundpolicyPageState createState() => _RefundpolicyPageState();
}

class _RefundpolicyPageState extends State<RefundpolicyPage> {

  var viewAbout;
  var viewBG;
  @override
  void initState() {
    super.initState();

    viewAbout = StringConst.ABOUTUSBG;
    viewBG= StringConst.ATTRIBUTEBG;

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
            Container(
              height: 193,
              decoration: BoxDecoration(
                color: aboutBG,
                image: DecorationImage(
                  image: NetworkImage(viewAbout),
                  fit: BoxFit.cover,
                ),
              ),
              child: Center(
                child: SizedBox(
                  width: double.infinity,
                  child: ScreenHelper(
                    desktop: _buildUi(
                        context, kDesktopMaxWidth, maincolor),
                    tablet: _buildUi(
                        context, kTabletMaxWidth, maincolor),
                    mobile: _buildUi(
                        context,
                        getMobileMaxWidth(context),
                        maincolor),
                  ),
                ),
              ),
            ),
            Stack(
              children: [
                Positioned(
                    right: -50,
                    bottom: -80,
                    child: Image.asset(viewBG)),
                Positioned(
                  left: -350,
                  top: -280,
                  child: Container(
                    height: 785,
                    width: 785,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      gradient: RadialGradient(
                        colors: [PricingiconBG, PricingiconBG,Colors.white],
                        center: Alignment.center,
                        radius: 0.9,
                        stops: [-1.0, -0.1,0.5],
                      ),
                    ),
                  ),
                ),

                SizedBox(
                  width: double.infinity,
                  child: ScreenHelper(
                    desktop: _buildDetailUi(
                        context, kDesktopMaxWidth, maincolor),
                    tablet: _buildDetailUi(
                        context, kTabletMaxWidth, maincolor),
                    mobile: _buildDetailUi(
                        context,
                        getMobileMaxWidth(context),
                        maincolor),
                  ),
                ),
              ],
            ),
            FooterSection()
          ],
        ),
      ),
    );
  }
  Widget _buildUi(BuildContext context, double width, Color maincolor){
    return ResponsiveWrapper(
        maxWidth: width,
        minWidth: width,
        child:Center(
          child: Text(
            "Cancellation and Refund Policy",
            textAlign: TextAlign.center,
            style: GoogleFonts.lato(
              color: Colors.white,
              fontWeight: FontWeight.w600,
              fontSize: 40,

            ),
          ),
        )
    );
  }

  Widget _buildDetailUi(BuildContext context, double width, Color maincolor){
    return ResponsiveWrapper(
        maxWidth: width,
        minWidth: width,
        child:Padding(
          padding: const EdgeInsets.symmetric(horizontal: 150.0,vertical: 50),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                '''These Cancellation and Refund Rules ("Rules") outline the procedures and policies regarding the cancellation of services and requests for refunds for document preparation consultancy services provided by Jeevantika Consultancy Services Private Limited ("Company", "we", "us", or "our"). By engaging our services, you agree to abide by these Rules.''',
                style: GoogleFonts.roboto(
                    color: desccolor,
                    fontWeight: FontWeight.w400,
                    fontSize: 16,
                    height: 1.8
                ),
              ),
              SizedBox(height: 45,),
              Text(
                '''Cancellation Policy:''',
                style: GoogleFonts.lato(
                  color: textcolor,
                  fontWeight: FontWeight.w500,
                  fontSize: 24,
                ),
              ),
              SizedBox(height: 8,),
              Text(
                '''Clients may request to cancel the services at any time before the commencement of work.''',
                style: GoogleFonts.roboto(
                    color: desccolor,
                    fontWeight: FontWeight.w400,
                    fontSize: 16,
                    height: 1.8
                ),
              ),
              SizedBox(height: 10,),
              Text(
                '''To cancel services, clients must provide a written notice of cancellation via email or other forms of communication specified by the Company.''',
                style: GoogleFonts.roboto(
                    color: desccolor,
                    fontWeight: FontWeight.w400,
                    fontSize: 16,
                    height: 1.8
                ),
              ),
              SizedBox(height: 45,),
              Text(
                '''Refund Policy:''',
                style: GoogleFonts.lato(
                  color: textcolor,
                  fontWeight: FontWeight.w500,
                  fontSize: 24,
                ),
              ),
              SizedBox(height: 8,),
              Text(
                '''Refunds will be processed in accordance with the following guidelines:''',
                style: GoogleFonts.roboto(
                    color: desccolor,
                    fontWeight: FontWeight.w400,
                    fontSize: 16,
                    height: 1.8
                ),
              ),
              SizedBox(height: 10,),
              Text(
                '''Full Refund: If the cancellation request is received before any work has been initiated, a full refund of the service fees will be issued.''',
                style: GoogleFonts.roboto(
                    color: desccolor,
                    fontWeight: FontWeight.w400,
                    fontSize: 16,
                    height: 1.8
                ),
              ),
               SizedBox(height: 10,),
              Text(
                '''Partial Refund: If the cancellation request is received after work has commenced but before completion, a partial refund may be issued, taking into account the work already completed.''',
                style: GoogleFonts.roboto(
                    color: desccolor,
                    fontWeight: FontWeight.w400,
                    fontSize: 16,
                    height: 1.8
                ),
              ),
               SizedBox(height: 10,),
              Text(
                '''No Refund: No refund will be provided for cancellation requests received after the completion of the services.''',
                style: GoogleFonts.roboto(
                    color: desccolor,
                    fontWeight: FontWeight.w400,
                    fontSize: 16,
                    height: 1.8
                ),
              ),
              SizedBox(height: 45,),
              Text(
                '''Refund Process:''',
                style: GoogleFonts.lato(
                  color: textcolor,
                  fontWeight: FontWeight.w500,
                  fontSize: 24,
                ),
              ),
              SizedBox(height: 8,),
              Text(
                '''Refunds will be processed within 21 business days upon approval of the cancellation request.''',
                style: GoogleFonts.roboto(
                    color: desccolor,
                    fontWeight: FontWeight.w400,
                    fontSize: 16,
                    height: 1.8
                ),
              ),
              SizedBox(height: 10,),
              Text(
                '''Refunds will be issued using the same payment method used for the initial transaction, unless otherwise agreed upon by the Company and the client.''',
                style: GoogleFonts.roboto(
                    color: desccolor,
                    fontWeight: FontWeight.w400,
                    fontSize: 16,
                    height: 1.8
                ),
              ),
              SizedBox(height: 45,),
              Text(
                '''Exceptions:''',
                style: GoogleFonts.lato(
                  color: textcolor,
                  fontWeight: FontWeight.w500,
                  fontSize: 24,
                ),
              ),
              SizedBox(height: 8,),
              Text(
                '''The Company reserves the right to refuse a refund request if it is deemed to be fraudulent, abusive, or in violation of these Rules.''',
                style: GoogleFonts.roboto(
                    color: desccolor,
                    fontWeight: FontWeight.w400,
                    fontSize: 16,
                    height: 1.8
                ),
              ),
              SizedBox(height: 10,),
              Text(
                '''Refunds will not be provided for any third-party costs incurred by the Company in relation to the provision of services.''',
                style: GoogleFonts.roboto(
                    color: desccolor,
                    fontWeight: FontWeight.w400,
                    fontSize: 16,
                    height: 1.8
                ),
              ),
              SizedBox(height: 45,),
              Text(
                '''Modification of Services:''',
                style: GoogleFonts.lato(
                  color: textcolor,
                  fontWeight: FontWeight.w500,
                  fontSize: 24,
                ),
              ),
              SizedBox(height: 8,),
              Text(
                '''In the event that the Company is unable to fulfill its obligations due to unforeseen circumstances or force majeure, clients will be notified promptly, and alternative arrangements or refunds may be offered at the discretion of the Company.''',
                style: GoogleFonts.roboto(
                    color: desccolor,
                    fontWeight: FontWeight.w400,
                    fontSize: 16,
                    height: 1.8
                ),
              ),

              SizedBox(height: 45,),
              Text(
                '''Contact Us:''',
                style: GoogleFonts.lato(
                  color: textcolor,
                  fontWeight: FontWeight.w500,
                  fontSize: 24,
                ),
              ),
              SizedBox(height: 8,),
              Text(
                '''If you have any questions about our Cancellation and Refund Rules or need assistance with a cancellation request, please contact us at contact@jeevantika.com.''',
                style: GoogleFonts.roboto(
                    color: desccolor,
                    fontWeight: FontWeight.w400,
                    fontSize: 16,
                    height: 1.8
                ),
              ),
              SizedBox(height: 10,),
              Text(
                '''By engaging our services, you acknowledge that you have read, understood, and agree to abide by these Cancellation and Refund Rules. The Company reserves the right to amend or modify these Rules at any time, and any changes will be effective immediately upon posting on our website or notifying clients directly.''',
                style: GoogleFonts.roboto(
                    color: desccolor,
                    fontWeight: FontWeight.w400,
                    fontSize: 16,
                    height: 1.8
                ),
              ),


              SizedBox(height: 40,),
            ],
          ),
        )
    );
  }
}


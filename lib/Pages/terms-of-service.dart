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


class TermsServicePage extends StatefulWidget {
  TermsServicePage({
    Key? key,
  }) : super(key: key);

  @override
  _TermsServicePageState createState() => _TermsServicePageState();
}

class _TermsServicePageState extends State<TermsServicePage> {

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
            "Terms of Service",
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
               '''These Terms of Service ("Terms") govern your use of the document preparation and consultancy services for recovery of Lost and Unclaimed Shares ("Services") provided by Jeevantika Consultancy Services Private Limited ("Company", "we", "us", or "our"). By accessing or using the Services, you agree to be bound by these Terms.''',
                style: GoogleFonts.roboto(
                  color: desccolor,
                  fontWeight: FontWeight.w400,
                  fontSize: 16,
                  height: 1.8
                ),
              ),
              SizedBox(height: 45,),
              Text(
                '''Scope of Services:''',
                style: GoogleFonts.lato(
                    color: textcolor,
                    fontWeight: FontWeight.w500,
                    fontSize: 24,
                ),
              ),
              SizedBox(height: 8,),
              Text(
                '''We offer document preparation consultancy services to assist clients in drafting, reviewing, and revising various types of documents, including but not limited to legal agreements, business proposals, reports, and letters.''',
                style: GoogleFonts.roboto(
                    color: desccolor,
                    fontWeight: FontWeight.w400,
                    fontSize: 16,
                    height: 1.8
                ),
              ),
              SizedBox(height: 45,),
              Text(
                '''Client Responsibilities:''',
                style: GoogleFonts.lato(
                  color: textcolor,
                  fontWeight: FontWeight.w500,
                  fontSize: 24,
                ),
              ),
              SizedBox(height: 8,),
              Text(
                '''You are responsible for providing accurate and complete information necessary for the preparation of documents.''',
                style: GoogleFonts.roboto(
                    color: desccolor,
                    fontWeight: FontWeight.w400,
                    fontSize: 16,
                    height: 1.8
                ),
              ),
              SizedBox(height: 10,),
              Text(
                '''You acknowledge that we are not providing legal advice, and the Services do not create an attorney-client relationship.''',
                style: GoogleFonts.roboto(
                    color: desccolor,
                    fontWeight: FontWeight.w400,
                    fontSize: 16,
                    height: 1.8
                ),
              ),
              SizedBox(height: 45,),
              Text(
                '''Service Fees:''',
                style: GoogleFonts.lato(
                  color: textcolor,
                  fontWeight: FontWeight.w500,
                  fontSize: 24,
                ),
              ),
              SizedBox(height: 8,),
              Text(
                '''Fees for the Services are determined based on the scope and complexity of the work.''',
                style: GoogleFonts.roboto(
                    color: desccolor,
                    fontWeight: FontWeight.w400,
                    fontSize: 16,
                    height: 1.8
                ),
              ),
              SizedBox(height: 10,),
              Text(
                '''Payment terms will be provided upon agreement between the parties.''',
                style: GoogleFonts.roboto(
                    color: desccolor,
                    fontWeight: FontWeight.w400,
                    fontSize: 16,
                    height: 1.8
                ),
              ),
              SizedBox(height: 45,),
              Text(
                '''Confidentiality:''',
                style: GoogleFonts.lato(
                  color: textcolor,
                  fontWeight: FontWeight.w500,
                  fontSize: 24,
                ),
              ),
              SizedBox(height: 8,),
              Text(
                '''We will maintain the confidentiality of all information provided by you in connection with the Services.''',
                style: GoogleFonts.roboto(
                    color: desccolor,
                    fontWeight: FontWeight.w400,
                    fontSize: 16,
                    height: 1.8
                ),
              ),
              SizedBox(height: 10,),
              Text(
                '''We will not disclose your confidential information to third parties without your consent, except as required by law.''',
                style: GoogleFonts.roboto(
                    color: desccolor,
                    fontWeight: FontWeight.w400,
                    fontSize: 16,
                    height: 1.8
                ),
              ),
               SizedBox(height: 45,),
              Text(
                '''Intellectual Property:''',
                style: GoogleFonts.lato(
                  color: textcolor,
                  fontWeight: FontWeight.w500,
                  fontSize: 24,
                ),
              ),
              SizedBox(height: 8,),
              Text(
                '''Any documents prepared by us as part of the Services are owned by you upon payment of all fees.''',
                style: GoogleFonts.roboto(
                    color: desccolor,
                    fontWeight: FontWeight.w400,
                    fontSize: 16,
                    height: 1.8
                ),
              ),
              SizedBox(height: 10,),
              Text(
                '''We retain the right to use anonymized and aggregated data for analytical and marketing purposes.''',
                style: GoogleFonts.roboto(
                    color: desccolor,
                    fontWeight: FontWeight.w400,
                    fontSize: 16,
                    height: 1.8
                ),
              ),
               SizedBox(height: 45,),
              Text(
                '''Disclaimer of Warranties:''',
                style: GoogleFonts.lato(
                  color: textcolor,
                  fontWeight: FontWeight.w500,
                  fontSize: 24,
                ),
              ),
              SizedBox(height: 8,),
              Text(
                '''The Services are provided on an "as-is" and "as-available" basis, without warranties of any kind.''',
                style: GoogleFonts.roboto(
                    color: desccolor,
                    fontWeight: FontWeight.w400,
                    fontSize: 16,
                    height: 1.8
                ),
              ),
              SizedBox(height: 10,),
              Text(
                '''We do not warrant that the Services will be error-free, timely, or uninterrupted.''',
                style: GoogleFonts.roboto(
                    color: desccolor,
                    fontWeight: FontWeight.w400,
                    fontSize: 16,
                    height: 1.8
                ),
              ),
              SizedBox(height: 45,),
              Text(
                '''Limitation of Liability:''',
                style: GoogleFonts.lato(
                  color: textcolor,
                  fontWeight: FontWeight.w500,
                  fontSize: 24,
                ),
              ),
              SizedBox(height: 8,),
              Text(
                '''In no event shall we be liable for any indirect, incidental, special, or consequential damages arising out of or in connection with the Services.''',
                style: GoogleFonts.roboto(
                    color: desccolor,
                    fontWeight: FontWeight.w400,
                    fontSize: 16,
                    height: 1.8
                ),
              ),
              SizedBox(height: 10,),
              Text(
                '''Our total liability for any claim arising under these Terms shall not exceed the total fees paid by you for the Services.''',
                style: GoogleFonts.roboto(
                    color: desccolor,
                    fontWeight: FontWeight.w400,
                    fontSize: 16,
                    height: 1.8
                ),
              ),
              SizedBox(height: 45,),
              Text(
                '''Termination:''',
                style: GoogleFonts.lato(
                  color: textcolor,
                  fontWeight: FontWeight.w500,
                  fontSize: 24,
                ),
              ),
              SizedBox(height: 8,),
              Text(
                '''Either party may terminate the Services upon written notice to the other party.''',
                style: GoogleFonts.roboto(
                    color: desccolor,
                    fontWeight: FontWeight.w400,
                    fontSize: 16,
                    height: 1.8
                ),
              ),
              SizedBox(height: 10,),
              Text(
                '''Upon termination, you shall pay for all Services provided up to the date of termination.''',
                style: GoogleFonts.roboto(
                    color: desccolor,
                    fontWeight: FontWeight.w400,
                    fontSize: 16,
                    height: 1.8
                ),
              ),
              SizedBox(height: 45,),
              Text(
                '''Governing Law:''',
                style: GoogleFonts.lato(
                  color: textcolor,
                  fontWeight: FontWeight.w500,
                  fontSize: 24,
                ),
              ),
              SizedBox(height: 8,),
              Text(
                '''These Terms shall be governed by and construed in accordance with the laws of State of Rajasthan, India, without regard to its conflict of law provisions.''',
                style: GoogleFonts.roboto(
                    color: desccolor,
                    fontWeight: FontWeight.w400,
                    fontSize: 16,
                    height: 1.8
                ),
              ),
              SizedBox(height: 45,),
              Text(
                '''Amendments:''',
                style: GoogleFonts.lato(
                  color: textcolor,
                  fontWeight: FontWeight.w500,
                  fontSize: 24,
                ),
              ),
              SizedBox(height: 8,),
              Text(
                '''We reserve the right to modify or revise these Terms at any time. Any changes will be effective immediately upon posting on our website or notifying you directly.''',
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
                '''If you have any questions about these Terms or the Services, please contact us at contact@jeevantika.com.''',
                style: GoogleFonts.roboto(
                    color: desccolor,
                    fontWeight: FontWeight.w400,
                    fontSize: 16,
                    height: 1.8
                ),
              ),
              SizedBox(height: 10,),
              Text(
                '''By using our Services, you acknowledge that you have read, understood, and agree to be bound by these Terms of Service. If you do not agree to these Terms, you may not access or use the Services.''',
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


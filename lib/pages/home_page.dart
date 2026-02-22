import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portfolio_web/constrants/colors.dart';
import 'package:portfolio_web/constrants/habilities.dart';
import 'package:portfolio_web/constrants/size.dart';
import 'package:portfolio_web/widgets/drawer_mobile.dart';
import 'package:portfolio_web/widgets/header_cellphone.dart';
import 'package:portfolio_web/widgets/header_desktop.dart';
import 'package:portfolio_web/widgets/main_desktop.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final scaffoldKey = GlobalKey<ScaffoldState>();
  final ScrollController _scrollController = ScrollController();

  @override
  void dispose() {
    _scrollController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    final screenWidth = screenSize.width;
    return LayoutBuilder(
      builder: (context, constraints) {
        return Scaffold(
          key: scaffoldKey,
          backgroundColor: CustomColor.scaffoldBackground,
          endDrawer: constraints.maxWidth >= kMinDesktopWidth ? null : const DrawerMobile(),
          body: ListView(
            controller: _scrollController,
            scrollDirection: Axis.vertical,
            children: [
              //MAIN
              // if(constraints.maxWidth >= kMinDesktopWidth)
              //   const HeaderDesktop() 
              // else
              //   HeaderCellphone(
              //     onLogoTap: () {
                    
              //     },
              //     onMenuTap: () {
              //       scaffoldKey.currentState?.openEndDrawer();
              //     },
              //   ),

              MainDesktop(scrollController: _scrollController,),

              //SKILLS
              Container(
                // height: 500,
                width: double.maxFinite,
                padding: EdgeInsets.symmetric(horizontal: screenWidth/3),
                color: CustomColor.whitePrimary,
                child: Column(
                  children: [
                    Card(
                      color: CustomColor.backgroundLight2,
                      margin: const EdgeInsets.only(top: 50.0, bottom: 20.0),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(500),
                      ),
                      elevation: 10.0,
                      child: Padding(
                        padding: const EdgeInsets.all(5.0),
                        child: Image.asset('assets/img/memoji.png', width: 300, height: 300,),
                      ),
                    ),
                    Text(
                      "About me",
                      style: GoogleFonts.robotoSerif(
                        fontSize: screenWidth > 850 ? 40.0 : 25.0,
                        fontWeight: FontWeight.bold,
                        color: CustomColor.backgroundLight2,
                      ),
                    ),
                    Divider(
                      color: CustomColor.backgroundLight2,
                      thickness: 2.0,
                      height: 40.0,
                      // indent: screenWidth / 0.5,
                      // endIndent: screenWidth / 0.5,
                    ),
                    Container(
                      constraints: BoxConstraints(
                        maxWidth: screenWidth / 1.8
                      ),
                      child: Text(
                        "Peruvian Software Engineer currently based in Madras, Oregon, with a strong background in Systems and Informatics Engineering and solid experience in mobile development.",
                        style: GoogleFonts.robotoSerif(
                          fontSize: screenWidth > 850 ? 20.0 : 15.0,
                          letterSpacing: 0.9,
                          color: CustomColor.backgroundLight2,
                        ),
                        textAlign: TextAlign.justify,
                      ),
                    ),
                    Container(
                      constraints: BoxConstraints(
                        maxWidth: screenWidth / 1.8,
                      ),
                      padding: const EdgeInsets.only(bottom: 50.0),
                      child: Text(
                        "Specialized in Android, iOS, and Flutter, with published applications on the App Store and Play Store, as well as custom library development (UI components, animations, MQTT, maps, and QR scanning). Founder of projects like BIIX and Voy a Bordo, focused on building innovative technology solutions for the transportation sector.",
                        style: GoogleFonts.robotoSerif(
                          fontSize: screenWidth > 850 ? 20.0 : 15.0,
                          color: CustomColor.backgroundLight2,
                        ),
                        textAlign: TextAlign.justify,
                      ),
                    ),
                  ],
                ),
              ),
              //PROJECTS
              Container(
                height: 500,
                width: double.maxFinite,
                color: Colors.blueGrey,
              ),
              //CONTACT
              Container(
                height: 500,
                width: double.maxFinite,
                color: Colors.blueGrey,
              ),
              //FOOTER
              Container(
                height: 500,
                width: double.maxFinite,
              ),
            ],
          )
        );
      },
    );
    
  }
}
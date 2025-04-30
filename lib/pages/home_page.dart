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
                      indent: screenWidth / 4.5,
                      endIndent: screenWidth / 4.5,
                    ),
                    Container(
                      constraints: BoxConstraints(
                        maxWidth: screenWidth / 1.8
                      ),
                      child: Text(
                        "Hi! I’m a Flutter developer with a passion for building clean, fast, and user-friendly mobile apps. I’m currently in my final year of studying Systems and Computer Engineering, and I’ve already had the chance to work on real-world projects that are live on both the App Store and Google Play.\n",
                        style: GoogleFonts.robotoSerif(
                          fontSize: screenWidth > 850 ? 25.0 : 20.0,
                          color: CustomColor.backgroundLight2,
                        ),
                        textAlign: TextAlign.justify,
                      ),
                    ),
                    Container(
                      constraints: BoxConstraints(
                        maxWidth: screenWidth / 1.8
                      ),
                      child: Text(
                        "I enjoy turning ideas into functional apps using tools like Flutter, Dart, Kotlin, Android Studio, and Xcode. I’m always learning and improving, whether it’s exploring new libraries, polishing UI/UX, or diving deeper into native features. For me, coding is not just about writing code, it’s about solving problems and creating great user experiences.\n",
                        style: GoogleFonts.robotoSerif(
                          fontSize: screenWidth > 850 ? 25.0 : 20.0,
                          color: CustomColor.backgroundLight2,
                        ),
                        textAlign: TextAlign.justify,
                      ),
                    ),
                    SizedBox(
                      width: screenWidth / 1.8,
                      child: Text(
                        'Skills:',
                        style: GoogleFonts.robotoSerif(
                          fontSize: screenWidth > 850 ? 25.0 : 20.0,
                          color: CustomColor.backgroundLight2,
                          fontWeight: FontWeight.bold,
                        ),
                        textAlign: TextAlign.start,
                      ),
                    ),
                    Wrap(
                      alignment: WrapAlignment.center,
                      crossAxisAlignment: WrapCrossAlignment.center,
                      runSpacing: 10.0,
                      children: [
                        for(int i = 0; i < workedAs.length; i++)
                        Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Text(
                              workedAs[i],
                              style: GoogleFonts.robotoSerif(
                                fontSize: screenWidth > 850 ? 20.0 : 13.0,
                                color: CustomColor.backgroundLight2,
                              ),
                            ),
                            if(i != workedAs.length - 1)
                              Container(
                                margin: const EdgeInsets.symmetric(horizontal: 15.0),
                                decoration: BoxDecoration(
                                  color: CustomColor.yellowPrimary,
                                  borderRadius: BorderRadius.circular(5.0),
                                ),
                                child: SizedBox(
                                  width: 6.0,
                                  height: 6.0,
                                )
                              )
                          ],
                        )
                      ],
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
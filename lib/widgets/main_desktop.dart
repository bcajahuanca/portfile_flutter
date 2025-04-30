import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lottie/lottie.dart';
import 'package:portfolio_web/constrants/colors.dart';
import 'package:portfolio_web/constrants/habilities.dart';
import 'package:url_launcher/url_launcher.dart';

class MainDesktop extends StatefulWidget {
  final ScrollController scrollController;

  const MainDesktop({super.key, required this.scrollController});

  @override
  State<MainDesktop> createState() => _MainDesktopState();
}

class _MainDesktopState extends State<MainDesktop> {

  int? hoveredIndex; 

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    final screenWidth = screenSize.width;
    final screenHeight = screenSize.height;
    final referenceSize = screenSize.width < screenSize.height
        ? screenSize.width
        : screenSize.height;
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 20.0),
      height: screenHeight,
      constraints: BoxConstraints(minHeight: 350.0),
      child: Stack(
        alignment: Alignment.center,
        children: [

          Image.asset(
            "assets/img/android.png",
            width: screenWidth,
            fit: BoxFit.cover,
            color: CustomColor.scaffoldBackgroundLight
          ),

          //CHANGE LANGUAGE


          
          //BODY
          SizedBox(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                // SizedBox(
                //   width: referenceSize / 2.7,
                //   height: referenceSize / 2.7,
                //   child: Stack(
                //     alignment: Alignment.center,
                //     children: [
                //       Container(
                //         width: referenceSize / 2,
                //         height: referenceSize / 3.5,
                //         decoration: BoxDecoration(
                //           color: CustomColor.yellowSecondary,
                //           borderRadius: BorderRadius.circular(referenceSize),
                //         ),
                //       ),
                //       Transform.translate(
                //         offset: Offset(0, -referenceSize * 0.12),
                //         child: Image.asset(
                //           "assets/img/android.png",
                //           width: referenceSize / 2.8,
                //           fit: BoxFit.contain,
                //         ),
                //       ),
                //     ],
                //   ),
                // ),

                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Text(
                      "HI THERE",
                      style: GoogleFonts.robotoSerif(
                        fontSize: screenWidth > 850 ? 25.0 : 10.0,
                        fontWeight: FontWeight.bold,
                        color: CustomColor.yellowPrimary,
                      ),
                    ),
                    Text(
                      "I'm Brad Cajahuanca",
                      style: GoogleFonts.robotoSerif(
                        fontSize: screenWidth > 1150 ? 60.0 : 30.0,
                        fontWeight: FontWeight.bold,
                        color: CustomColor.whitePrimary,
                      ),
                    ),
                    SizedBox(
                      width: screenWidth/2,
                      child: Wrap(
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
                                  color: CustomColor.whitePrimary,
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
                    ),
                    const SizedBox(height: 15.0,),
                    SizedBox(
                      width: screenWidth/2,
                      child: Wrap(
                        alignment: WrapAlignment.spaceEvenly,
                        crossAxisAlignment: WrapCrossAlignment.center,
                        spacing: 10.0,
                        runSpacing: 10.0,
                        children: [
                          for (int i = 0; i < socialNetWorks.length; i++)
                            MouseRegion(
                              onEnter: (_) => setState(() => hoveredIndex = i),
                              onExit: (_) => setState(() => hoveredIndex = null),
                              child: IconButton(
                                onPressed: () async {
                                  final Uri url = Uri.parse(socialNetWorksLinks[i]);
                                  if (await canLaunchUrl(url)) {
                                    await launchUrl(url, mode: LaunchMode.externalApplication);
                                  }
                                },
                                icon: FaIcon(
                                  socialNetWorks[i].icon,
                                  color: hoveredIndex == i
                                      ? CustomColor.whiteSecondary
                                      : CustomColor.whitePrimary,
                                  size: screenWidth > 850 ? 40.0 : 20.0,
                                ),
                              ),
                            ),
                        ],
                      ),
                    ),
                  ],
                ) 
              ],
            ),
          ),
          
          //ARROW DOWN
          Positioned(
            width: 65.0,
            height: 65.0,
            bottom: 30.0,
            child: GestureDetector(
              onTap: (){
                widget.scrollController.animateTo(
                widget.scrollController.position.maxScrollExtent / 2.78,
                duration: Duration(milliseconds: 500),
                curve: Curves.easeInOut,
              );
              },
              child: Lottie.asset(
                "assets/lottie/arrow_down.json"
              ),
            )
          ),
        ],
      ),
    );
  }
}
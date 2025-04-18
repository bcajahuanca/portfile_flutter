import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portfolio_web/constrants/colors.dart';

class MainDesktop extends StatelessWidget {
  const MainDesktop({super.key});

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    final screenWidth = screenSize.width;
    final screenHeight = screenSize.height;
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 20.0),
      height: screenHeight,
      constraints: BoxConstraints(minHeight: 350.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Image.asset(
            "assets/android.png",
            width: screenWidth/3,
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "HI THERE",
                style: GoogleFonts.robotoSerif(
                  fontSize: 30.0,
                  fontWeight: FontWeight.bold,
                  color: CustomColor.yellowPrimary,
                ),
              ),
              Text(
                "I'm Brad Cajahuanca",
                style: GoogleFonts.robotoSerif(
                  fontSize: 50.0,
                  fontWeight: FontWeight.bold,
                  color: CustomColor.whitePrimary,
                ),
              ),
              Row(
                
              )
            ],
          ) 
        ],
      ),
    );
  }
}